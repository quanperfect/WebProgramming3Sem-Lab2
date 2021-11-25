var x_value;
var r_value;
var y_value;

// didn't finish, not worth it;
// function retrieveChoiceAfterRefresh() {
//     switch (x_value) {
//         case -5:
//             $("#x05").trigger("click");
//             break;
//         case -4:
//             $("#x04").trigger("click");
//             break;
//         case -3:
//             $("#x03").trigger("click");
//             break;
//         case -2:
//             $("#x02").trigger("click");
//             break;
//         case -1:
//             $("#x01").trigger("click");
//             break;
//         case 0:
//             $("#x0").trigger("click");
//             break;
//         case 1:
//             $("#x1").trigger("click");
//             break;
//         case 2:
//             $("#x2").trigger("click");
//             break;
//         case 3:
//             $("#x3").trigger("click");
//             break;
//         default:
//             console.log('Retrieving x_value went super wrong');
//     }
//
//     switch (r_value) {
//         case 1:
//             $("#r1").trigger("click");
//             break;
//         case 2:
//             $("#r2").trigger("click");
//             break;
//         case 3:
//             $("#r3").trigger("click");
//             break;
//         case 4:
//             $("#r4").trigger("click");
//             break;
//         case 5:
//             $("#r5").trigger("click");
//             break;
//         default:
//             console.log('Retrieving x_value went super wrong');
//     }
//
// }



$(document).ready(function () {
    $("#x3,#x2,#x1,#x0,#x01,#x02,#x03,#x04,#x05").on('click', function (event) {
        event.preventDefault();
        $("#x3,#x2,#x1,#x0,#x01,#x02,#x03,#x04,#x05").css('background-image', 'url(\'./images/navbar-image.svg\')')
        x_value = $(this).val();
        $(this).css('background-image', 'url(\'./images/navbar-image-blue.svg\')')
    })
});

$(document).ready(function () {
    $("#r1,#r2,#r3,#r4,#r5").on('click', function (event) {
        event.preventDefault();
        $("#r1,#r2,#r3,#r4,#r5").css('background-image', 'url(\'./images/navbar-image.svg\')')
        r_value = $(this).val();
        $(this).css('background-image', 'url(\'./images/navbar-image-blue.svg\')')
    })
});

$(document).ready(function () {
    $("#submit-button").on('click', function (event) {
        event.preventDefault();
        console.log("submitted-button ajax");
        if (fromMouseClick)
        {
            x_value = $("#hidden-x").val();
            y_value = $("#hidden-y").val();
        }
        else
        {
            y_value = $("#y-field").val();
        }
        if (validation()) {
            if (fromMouseClick)
            {
                console.log("called like fromMouseClick");
                $.ajax({
                    type: "POST",
                    url: "./controller",
                    // url: "../java/com/lab2/Servlets/ControllerServlet.java",
                    data: {
                        "X": $("#hidden-x").val(),
                        "Y": $("#hidden-y").val(),
                        "R": r_value
                    },
                    success: function(result) {
                        window.location.reload();
                    },
                    error: function(jqXHR, exception) {
                        var msg = '';
                        if (jqXHR.status === 0) {
                            msg = 'Not connect.\n Verify Network.';
                        } else if (jqXHR.status == 404) {
                            msg = 'Requested page not found. [404]';
                        } else if (jqXHR.status == 500) {
                            msg = 'Internal Server Error [500].';
                        } else if (jqXHR.status == 422) {
                                msg = '422 Unprocessable Entity.';
                        } else if (exception === 'parsererror') {
                            msg = 'Requested JSON parse failed.';
                        } else if (exception === 'timeout') {
                            msg = 'Time out error.';
                        } else if (exception === 'abort') {
                            msg = 'Ajax request aborted.';
                        } else {
                            msg = 'Uncaught Error.\n' + jqXHR.responseText;
                        }
                        alert(msg);
                    }
                });
            }
            else
            {
                console.log("called like from Submit");
                $.ajax({
                    type: "POST",
                    url: "./controller",
                    // url: "../java/com/lab2/Servlets/ControllerServlet.java",
                    data: {
                        "X": x_value,
                        "Y": $("#y-field").val(),
                        "R": r_value
                    },
                    success: function(result) {
                        window.location.reload();
                    },
                    error: function(jqXHR, exception) {
                        var msg = '';
                        if (jqXHR.status === 0) {
                            msg = 'Not connect.\n Verify Network.';
                        } else if (jqXHR.status == 404) {
                            msg = 'Requested page not found. [404]';
                        } else if (jqXHR.status == 500) {
                            msg = 'Internal Server Error [500].';
                        } else if (jqXHR.status == 422) {
                                msg = '422 Unprocessable Entity.';
                        } else if (exception === 'parsererror') {
                            msg = 'Requested JSON parse failed.';
                        } else if (exception === 'timeout') {
                            msg = 'Time out error.';
                        } else if (exception === 'abort') {
                            msg = 'Ajax request aborted.';
                        } else {
                            msg = 'Uncaught Error.\n' + jqXHR.responseText;
                        }
                        alert(msg);
                    }
                });
            }
        }
    })
});