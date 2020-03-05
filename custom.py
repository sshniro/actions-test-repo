#!/usr/bin/env python
import os
import github
from github import Github
import json
import yaml
from deepdiff import DeepDiff

GITHUB_TOKEN = os.environ['GITHUB_TOKEN']
GITHUB_REPOSITORY = os.environ['GITHUB_REPOSITORY']

print('github token is' + GITHUB_TOKEN)
print('github repo is' + GITHUB_REPOSITORY)

new_alerts_identified = False
update_issue_if_alert_resolved = True
issue_resolved = False

report_data = {}
zap_config_file = {}

new_alerts = []
updatedAlerts = []
existingAlerts = []

g_config_file_dir = '.github/workflows/'
yaml_file_name = os.environ['YAML_FILE_NAME']
working_branch = os.environ['WORKING_BRANCH']

create_new_issue = False
NXT_LINE = '\n'
TAB = "\t"
BULLET = "-"
msg = ''

# Github Configurations
g = Github(GITHUB_TOKEN)
repo = g.get_repo(GITHUB_REPOSITORY)
issue = ''


def g_load_zap_yaml_file():
    try:
        contents = repo.get_contents(g_config_file_dir + yaml_file_name)
        return yaml.safe_load(contents.decoded_content)
    except github.GithubException as err:
        print('error occurred while obtaining the object')
        exit(0)


def generate_basic__alert_msg(site_list, alert_list, updated_list):
    msg = 'The following new violations have been found during the ZAP scan' + NXT_LINE
    for site in site_list:
        for alert in site['alert']:
            msg = msg + '{} Alert[{}] count({}): {} {}'.format(BULLET, alert['pluginid'], len(alert['instances']),
                                                               alert['name'], NXT_LINE)

        for alert in updated_list:
            msg = msg + NXT_LINE + "The following alerts have been updated with the new ZAP Scan" + NXT_LINE
            msg = msg + '{} Alert[{}] count({}): {} {}'.format(BULLET, alert['pluginid'], len(alert['instances']),
                                                               alert['name'], NXT_LINE)
            if 'iterable_item_added' in alert:
                msg = msg + '{}{} Newly identified Issues: {} {}'.format(TAB, BULLET, len(alert['iterable_item_added']),
                                                                         NXT_LINE)
            if update_issue_if_alert_resolved and 'iterable_item_removed' in alert:
                msg = msg + '{}{} Resolved Issues: {} {}'.format(TAB, BULLET, len(alert['iterable_item_removed']),
                                                                 NXT_LINE)

    repo = "https://github.com/" + GITHUB_REPOSITORY + '/blob/' + working_branch + '/' + g_config_file_dir + yaml_file_name
    return msg + NXT_LINE + 'View the following following [file]({}) for complete report.'.format(repo)


def create_issue(title, msg):
    return repo.create_issue(title=title, body=msg)


def create_zap_yaml_file(yaml_file_name, data):
    with open(yaml_file_name, 'w') as yaml_file:
        yaml.dump(data, yaml_file, default_flow_style=False)


def filter_report_json_data(site_list):
    f_site_list = []
    for site in site_list:
        alert_list = []
        for alert in site:
            alert_list.append(dict((key, value) for key, value in alert.items() if
                                   key in ('pluginid', 'name', 'riskdesc', 'instances')))
        site_list.append(alert_list)
    return f_site_list


def get_g_file(dir_name, file_name, branch):
    list_of_files = repo.get_dir_contents(dir_name, ref=branch)
    return [element for element in list_of_files if element.name == file_name]


# Fetch the auto generated report from ZAP
print (os.listdir(g_config_file_dir))
with open(g_config_file_dir + 'report.json', 'r',errors='replace') as f:
    print('opening report json file')
    try:
        print(f.readlines())
        print('printed the lines')
        report_data = json.load(f)
        print('successfully read the report json file')
        # If no errors found in the report exit
        if len(report_data['site'][0]['alerts']) == 0:
            print('No errors found via the ZAP Scan')
            exit(0)
    except IOError as exc:
        print('zap report does not exists', exc)
        exit(0)
    except json.JSONDecodeError as exc:
        print('empty or invalid json report', exc)
        exit(0)

# Fetch the YAML file from the repository
with open(g_config_file_dir + yaml_file_name) as stream:
    print('opening zap yaml file')
    try:
        yaml_config = yaml.safe_load(stream)
        if not yaml_config:
            create_new_issue = True
        # If last issue is closed create a new issue
        if yaml_config:
            issue = repo.get_issue(number=yaml_config['issue'])
            if issue.state == 'closed':
                create_new_issue = True
    except IOError as exc:
        print('zap report does not exists', exc)
        create_new_issue = True
    except yaml.YAMLError as exc:
        print('invalid YAML syntax, creating a new file and issue', exc)
        create_new_issue = True
        print(exc)


def update_g_file(file_path, msg, content, branch, sha):
    repo.update_file(file_path, msg, content, sha,
                     branch=branch)


def create_g_file(file_path, msg, content, branch):
    repo.create_file(file_path, msg, content,
                     branch=branch)


# Create a new zap file and issue
if create_new_issue:
    r_sites = filter_report_json_data(report_data['site'])
    msg = generate_basic__alert_msg(r_sites, [])
    issue = create_issue('ZAP Scan Baseline Report', msg)
    yaml_file = {'issue': issue.number, 'alert_list': r_alerts}
    # TODO Remove after testing
    create_zap_yaml_file(yaml_file_name, yaml_file)

    g_config_file = get_g_file(g_config_file_dir, yaml_file_name, working_branch)
    if g_config_file:
        update_g_file(g_config_file[0].path, "Updating ZAP report", yaml.dump(yaml_file), working_branch,
                      g_config_file[0].sha)
    else:
        create_g_file(g_config_file_dir + yaml_file_name, "Creating the ZAP report", yaml.dump(yaml_file),
                      working_branch)
    print('zap process completed successfully!')
    exit(0)

# Iterate and filter only the required files
previous_alert_list = yaml_config['alert_list']
for r_alert in report_data['site'][0]['alerts']:
    # If not found in the existing vulnerabilities add it to new alerts
    p_alert = [element for element in previous_alert_list if element['pluginid'] == r_alert['pluginid']]
    if p_alert:
        p_alert = p_alert[0]
        diff = DeepDiff(r_alert['instances'], p_alert['instances'], ignore_order=True)
        if not diff:
            existing_alerts.append(p_alert)
        if 'iterable_item_removed' in diff:
            issue_resolved = True
            p_alert['iterable_item_removed'] = diff['iterable_item_removed']
        if 'iterable_item_added' in diff:
            p_alert['iterable_item_added'] = diff['iterable_item_added']
        updated_alerts.append(p_alert)
    else:
        new_alerts.append(r_alert)

if new_alerts or (updated_alerts and update_issue_if_alert_resolved):
    msg = generate_basic__alert_msg(new_alerts, updated_alerts)
    issue.create_comment(msg)

    g_config_file = get_g_file(g_config_file_dir, yaml_file_name, working_branch)
    yaml_file = {'issue': issue.number, 'alert_list': []}
    r_alerts = filter_report_json_data(report_data['site'][0]['alerts'])
    if g_config_file:
        g_config_file = g_config_file[0]
        repo.update_file(g_config_file.path, "Updating ZAP report", yaml.dump(r_alerts), g_config_file.sha,
                         branch=working_branch)
    else:
        repo.create_file(g_config_file_dir + yaml_file_name, "creating the zap report", yaml.dump(r_alerts),
                         branch=working_branch)
    print("process completed!")
    exit(0)
else:
    print('No change has been observed')
    exit(0)

print('The files have been commited')
