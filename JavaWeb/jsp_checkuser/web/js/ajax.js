var httpRequest = null;

function createXHR() {
    httpRequest = new XMLHttpRequest();
    if (!httpRequest) {
        alert("fail to create httpRequest");
    }
}

function sendRequest(url, params, method, handler) {
    createXHR();
    if (!httpRequest)
        return false;
    httpRequest.onreadystatechange = handler;

    if (method == "GET") {
        httpRequest.open("GET", url + "?" + params, true);
        httpRequest.send(null);
    }
    if (method == "POST") {
        httpRequest.open("POST", url, true);
        httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
        httpRequest.send(params);
    }
}