function validation() {
    return checkX() && checkY() && checkR();
}

function checkY() {
    console.log("checkY")
    clearErrors();
    let yValue = y_value;
    console.log("yValue = ",yValue);
    let yNumberValue = parseFloat(yValue);
    if (yValue === "" ||
        ((!yValue.match(/^-?[0-9]*$/))  && (!yValue.match(/^-?[0-9]*[\.,][0-9]+$/)))) {
        showMessage("Введите число Y");
        return false;
    }
    if (yNumberValue <= (-5) || yNumberValue >= 5) {
        showMessage("Число Y должно принадлежать отрезку (-5 ... 5)");
        return false;
    }
    return true;
}

function checkX() {
    console.log("checkX")
    console.log(x_value)
    if (x_value != null)
    {
        return true;
    }
    else {
        showMessage("Введите число X");
    }
}

function checkR() {
    console.log("checkR")
    if (r_value != null)
    {
        return true;
    }
    else {
        showMessage("Введите число R");
    }
}