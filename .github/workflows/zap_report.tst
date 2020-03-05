alert_list:
- instances:
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/img/faq/supportAddonVersion.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/getting-started/images/browser-no-proxy.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/websockets/images/105.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/images/fugue/forcedUserOff.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/websockets/images/handshake.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/getting-started/images/alert-icons.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/images/16/150.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/images/16/071.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/images/16/141.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/images/16/094.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/getting-started/images/zap-full-screen.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/images/fugue/broom-alerts.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/export-report/images/pdf.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/images/fugue/application-blue-export.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/images/16/076.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/main.7d9e3.css
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/images/16/118.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/images/16/096.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/img/faq/windows-settings-high-dpi.png
  - evidence: 'Access-Control-Allow-Origin: *'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/images/16/152.png
  name: Cross-Domain Misconfiguration
  pluginid: '10098'
  riskdesc: Medium (Medium)
- instances:
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/port-scan/tab/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/start/features/alerts/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/revisit/
  - method: GET
    uri: https://www.zaproxy.org/faq/why-dont-you-rewrite-zap-in-my-favorite-language/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/token-generator/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/ui/tabs/callbacks/
  - method: GET
    uri: https://www.zaproxy.org/faq/how-can-i-use-the-zap-api-in-my-own-regression-tests/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/releases/2.6.0/
  - method: GET
    uri: https://www.zaproxy.org/faq/where-can-i-ask-zap-related-questions/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/ui/dialogs/options/anticsrf/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/python-scripting/
  - method: GET
    uri: https://www.zaproxy.org/faq/why-am-i-getting-blank-zap-windows-on-linux/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/windows-webdrivers/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/vulncheck/
  - method: GET
    uri: https://www.zaproxy.org/faq/what-should-i-do-if-zap-doesn-t-detect-a-known-problem/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/ui/dialogs/addalert/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/ui/dialogs/options/keyboard/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/forced-browse/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/log-file-importer/
  - method: GET
    uri: https://www.zaproxy.org/docs/desktop/ui/tabs/response/
  name: Content Security Policy (CSP) Header Not Set
  pluginid: '10038'
  riskdesc: Low (Medium)
- instances:
  - evidence: <script src="https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js"></script>
    method: GET
    param: https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js
    uri: https://www.zaproxy.org/docs/desktop/start/features/api/
  - evidence: <script async src="https://www.googletagmanager.com/gtag/js?id=UA-71455536-1"></script>
    method: GET
    param: https://www.googletagmanager.com/gtag/js?id=UA-71455536-1
    uri: https://www.zaproxy.org/docs/desktop/releases/2.9.0/
  - evidence: <script async src="https://www.googletagmanager.com/gtag/js?id=UA-71455536-1"></script>
    method: GET
    param: https://www.googletagmanager.com/gtag/js?id=UA-71455536-1
    uri: https://www.zaproxy.org/docs/desktop/ui/dialogs/options/ascaninput/
  - evidence: <script src="https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js"></script>
    method: GET
    param: https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js
    uri: https://www.zaproxy.org/faq/details/setting-up-zap-to-test-dvwa/
  - evidence: <script async src="https://www.googletagmanager.com/gtag/js?id=UA-71455536-1"></script>
    method: GET
    param: https://www.googletagmanager.com/gtag/js?id=UA-71455536-1
    uri: https://www.zaproxy.org/docs/desktop/addons/openapi-support/
  - evidence: <script src="https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js"></script>
    method: GET
    param: https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js
    uri: https://www.zaproxy.org/docs/desktop/start/features/globalexcludeurl/
  - evidence: <script async src="https://www.googletagmanager.com/gtag/js?id=UA-71455536-1"></script>
    method: GET
    param: https://www.googletagmanager.com/gtag/js?id=UA-71455536-1
    uri: https://www.zaproxy.org/docs/desktop/addons/save-xml-message/
  - evidence: <script async src="https://www.googletagmanager.com/gtag/js?id=UA-71455536-1"></script>
    method: GET
    param: https://www.googletagmanager.com/gtag/js?id=UA-71455536-1
    uri: https://www.zaproxy.org/docs/desktop/start/features/notes/
  - evidence: <script src="https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js"></script>
    method: GET
    param: https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js
    uri: https://www.zaproxy.org/docs/desktop/start/features/modes/
  - evidence: <script src="https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js"></script>
    method: GET
    param: https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js
    uri: https://www.zaproxy.org/docs/desktop/ui/dialogs/options/api/
  - evidence: <script src="https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js"></script>
    method: GET
    param: https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js
    uri: https://www.zaproxy.org/docs/desktop/addons/fuzzdb-web-backdoors/
  - evidence: <script async src="https://www.googletagmanager.com/gtag/js?id=UA-71455536-1"></script>
    method: GET
    param: https://www.googletagmanager.com/gtag/js?id=UA-71455536-1
    uri: https://www.zaproxy.org/evangelists/
  - evidence: <script async src="https://www.googletagmanager.com/gtag/js?id=UA-71455536-1"></script>
    method: GET
    param: https://www.googletagmanager.com/gtag/js?id=UA-71455536-1
    uri: https://www.zaproxy.org/faq/what-vulnerability-classifications-are-supported/
  - evidence: <script src="https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js"></script>
    method: GET
    param: https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js
    uri: https://www.zaproxy.org/faq/why-has-the-quick-scan-attack-reported-an-invalid-url/
  - evidence: <script async src="https://www.googletagmanager.com/gtag/js?id=UA-71455536-1"></script>
    method: GET
    param: https://www.googletagmanager.com/gtag/js?id=UA-71455536-1
    uri: https://www.zaproxy.org/docs/desktop/releases/2.2.1/
  - evidence: <script async src="https://www.googletagmanager.com/gtag/js?id=UA-71455536-1"></script>
    method: GET
    param: https://www.googletagmanager.com/gtag/js?id=UA-71455536-1
    uri: https://www.zaproxy.org/faq/how-do-i-handle-a-false-positive/
  - evidence: <script src="https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js"></script>
    method: GET
    param: https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js
    uri: https://www.zaproxy.org/docs/desktop/addons/reveal/
  - evidence: <script async src="https://www.googletagmanager.com/gtag/js?id=UA-71455536-1"></script>
    method: GET
    param: https://www.googletagmanager.com/gtag/js?id=UA-71455536-1
    uri: https://www.zaproxy.org/docs/desktop/addons/all-in-one-notes/
  - evidence: <script src="https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js"></script>
    method: GET
    param: https://cdnjs.cloudflare.com/ajax/libs/lunr.js/2.3.6/lunr.min.js
    uri: https://www.zaproxy.org/docs/desktop/ui/dialogs/addnote/
  - evidence: <script async src="https://www.googletagmanager.com/gtag/js?id=UA-71455536-1"></script>
    method: GET
    param: https://www.googletagmanager.com/gtag/js?id=UA-71455536-1
    uri: https://www.zaproxy.org/docs/desktop/addons/ajax-spider/
  name: Cross-Domain JavaScript Source File Inclusion
  pluginid: '10017'
  riskdesc: Low (Medium)
- instances:
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/releases/2.2.2/
  - evidence: 0000284874
    method: GET
    uri: https://www.zaproxy.org/pdf/ZAPGettingStartedGuide-2.9.pdf
  - evidence: 0000410497
    method: GET
    uri: https://www.zaproxy.org/pdf/ZAPGettingStartedGuide-2.9.pdf
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/websockets/options/
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/releases/2.3.0/
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/ui/tlmenu/online/
  - evidence: '35974704'
    method: GET
    uri: https://www.zaproxy.org/evangelists/
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/import-urls/
  - evidence: 0000540813
    method: GET
    uri: https://www.zaproxy.org/pdf/ZAPGettingStartedGuide-2.9.pdf
  - evidence: '0000540266'
    method: GET
    uri: https://www.zaproxy.org/pdf/ZAPGettingStartedGuide-2.9.pdf
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/ui/dialogs/addnote/
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/start/features/intercept/
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/ui/dialogs/advascan/
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/websockets/sessionproperties/
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/faq/can-zap-be-used-to-test-my-favorite-framework-or-technology/
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/faq/how-do-you-find-out-what-key-to-use-to-set-a-config-value-on-the-command-line/
  - evidence: 0000539482
    method: GET
    uri: https://www.zaproxy.org/pdf/ZAPGettingStartedGuide-2.9.pdf
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/ui/dialogs/options/
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/ui/dialogs/options/api/
  - evidence: '71455536'
    method: GET
    uri: https://www.zaproxy.org/docs/desktop/addons/fuzzer/locations/
  name: Timestamp Disclosure - Unix
  pluginid: '10096'
  riskdesc: Informational (Low)
issue: 25
