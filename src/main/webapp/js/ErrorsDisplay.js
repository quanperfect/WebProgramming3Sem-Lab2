let display;

function setDisplay(item) {
    display = item;
}

function clearErrors() {
    display.innerText = "";
    console.log("clears msg")
}

function showMessage(msg) {
    display.innerText = msg;
    console.log("shows msg")
}