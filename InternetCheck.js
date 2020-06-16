



//JUST AN EXAMPLE, PLEASE USE YOUR OWN PICTURE!
var filepath = window.location.href;
//"http://www.kenrockwell.com/contax/images/g2/examples/31120037-5mb.jpg";
var dir = filepath.substring(0, filepath.lastIndexOf('/')) + "/";

var downloadSize =123904; //bytes
imageAddr = dir + "Images/speedcheck.jpg";

function ShowProgressMessage(msg) {
    if (console) {
        if (typeof msg == "string") {
            console.log(msg);
        } else {
            for (var i = 0; i < msg.length; i++) {
                console.log(msg[i]);
            }
        }
    }

    var oProgress = document.getElementById("progress");
    if (oProgress) {
        var actualHTML = (typeof msg == "string") ? msg : msg.join("<br />");
        oProgress.innerHTML = actualHTML;
    }
}



function InitiateSpeedDetection() {
    var oProgress = document.getElementById("progress");
    ShowProgressMessage("Checking Bandwidth...");
    MeasureConnectionSpeed();
    window.setTimeout(MeasureConnectionSpeed, 1);

};


function MeasureConnectionSpeed() {
    var startTime, endTime;
    var download = new Image();
    download.onload = function () {
        endTime = (new Date()).getTime();
        showResults();
    }

    download.onerror = function (err, msg) {
        ShowProgressMessage("Connection Error");
    }

    startTime = (new Date()).getTime();
    var cacheBuster = "?nnn=" + startTime;
    download.src = imageAddr + cacheBuster;

    function showResults() {
        var duration = (endTime - startTime) / 1000;
        var bitsLoaded = downloadSize * 8;
        var speedBps = (bitsLoaded / duration).toFixed(2);
        var speedKbps = (speedBps / 1024).toFixed(2);
        var speedMbps = (speedKbps / 1024).toFixed(2);

        if (speedKbps < 100) {
            ShowProgressMessage([
                "Your Internet Speed is Too Slow.."
            ]);
        }
        else if (speedKbps < 2000) {
            ShowProgressMessage([
            "Your Internet Speed is Normal"
            ]);
        }
        else {
            ShowProgressMessage([
            "Your Internet Speed is Good."
            ]);

        }
    }
}


var slowLoad = window.setTimeout(function () {
    // alert( "the page is taking its sweet time loading" );
    InitiateSpeedDetection();

}, 10000);

window.addEventListener('load', function () {
    window.clearTimeout(slowLoad);
}, false);



