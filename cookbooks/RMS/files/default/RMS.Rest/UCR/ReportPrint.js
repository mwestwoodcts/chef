var isInPrintMode = false;
var smartCOPPrintArguments = "";
function TogglePrintMode() {
    var keyValuePairs = smartCOPPrintArguments.split(',');
    if (isInPrintMode) {
        isInPrintMode = !isInPrintMode;
        for (var i = 0; i < keyValuePairs.length; i++) {
            var keyValue = keyValuePairs[i].split('=');
            var key = keyValue[0];
            var value = keyValue[1];
            var element = document.getElementById(key);
            element.classList.remove(value);
        }
    } else {
        isInPrintMode = !isInPrintMode;
        for (var i = 0; i < keyValuePairs.length; i++) {
            var keyValue = keyValuePairs[i].split('=');
            var key = keyValue[0];
            var value = keyValue[1];
            var element = document.getElementById(key);
            element.classList.add(value);
        }
    }
}

setTimeout(function() {
    var queryString = window.location.search;
    if (!queryString) {
        return; // No query string. Do nothing.
    }
    var afterQuestionMark = queryString.substr(1, queryString.length - 1);
    var queryStringParams = afterQuestionMark.split('&');
    for (var i = 0; i < queryStringParams.length; i++) {
        var currentParam = queryStringParams[i];
        if (currentParam == 'print') {
            TogglePrintMode();
            return;
        }
    }
}, 1);