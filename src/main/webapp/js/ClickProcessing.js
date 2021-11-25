const centerX = 148;
const centerY = 143;
const rX = 108;
const rY = 110;

var fromMouseClick = false;

function processClick (eventObj) {
    console.log("processing click on graph");
    let r = getRNumberValue();
    if (!checkR()) return;
    let rawX = eventObj.pageX - $("#graph").offset().left - centerX;
    let rawY = centerY + $("#graph").offset().top - eventObj.pageY;
    let xNormalized = rawX / (rX);
    let yNormalized = rawY / (rY);
    let x = xNormalized * r;
    let y = yNormalized * r;
    x = x.toFixed(2);
    y = y.toFixed(2);
    sendForm(x, y);
}

function sendForm(x, y) {
    fromMouseClick = true;
    $("#hidden-x").attr("value", x);
    $("#hidden-y").attr("value", y);
    $("#submit-button").trigger("click");
}

function getRNumberValue() {
    return r_value;
}

window.onload = function () {
    let errorDisplay = document.getElementById("errorDisplay");
    setDisplay(errorDisplay);
    $("#graph").on("click", processClick);
}

