



//shared web service method
function getTrans(paragraph, language) {

        var arrG = [];
        return $.ajax({
            type: "POST",
            url: "HRIS_Service.asmx/Tranlation",
            data: "{'paras': '" + paragraph + "," + language + "'}",
            contentType: "application/json",
            datatype: "json",
            success: function (responseFromServer) {

                for (i = 0; i < responseFromServer.d.length; i++) {
                    console.log(responseFromServer.d[i]);
                    var res = responseFromServer.d[i]
                    arrG.push(res);
                }

                localStorage.setItem("languageArr", JSON.stringify(arrG));

                translateByclassName(language, "trans");
                translateByclassName(language, "label");
                translateBy_spanElement(language);
                translateBy_aElement(language);
                translateBy_inputElement(language);
                translateBy_legendElement(language);
                translateBy_thElement(language);
                translateBy_labelElement(language);
                translateBy_hElement(language);
            }
        });
    
}




function stripHtml(html) {
    // Create a new div element
    var temporalDivElement = document.createElement(html);
    // Set the HTML content with the providen
    temporalDivElement.innerHTML = html;
    // Retrieve the text property of the element (cross-browser support)
    return temporalDivElement.textContent || temporalDivElement.innerText || "";
}


///////////////////////////////////////////////////translate By className////////////////////////////////////////////////////////
function translateByclassName(language,className) {

    console.log('///////////////////////////////////////////////////translate By className////////////////////////////////////////////////////////');
    var arr = JSON.parse(localStorage.getItem("languageArr"));

    var ele = document.getElementsByClassName(className);
 
    for (i = 0; i < ele.length; i++) {

        var paragraph = null;

        if (ele[i].tagName.toLowerCase() == "input") {
            paragraph = ele[i].value.trim();
        }
        else {
            paragraph = ele[i].innerHTML.trim();
        }

            ///////////////////////TranslateElements/////////////////////////
            for (a = 0; a < arr.length; a++) {

                var primaryLang = arr[a].split(',')[0].trim().toLowerCase();
                var translatedLang = arr[a].split(',')[1].trim();

                if (translatedLang.trim().length != 0) {

                    for (i = 0; i < ele.length; i++) {

                        if (ele[i].tagName.toLowerCase() == "input") {
                            if (primaryLang == ele[i].value.trim().toLowerCase()) {
                                ele[i].value = translatedLang;
                            }
                        }
                        else {
                            if (primaryLang == ele[i].innerHTML.trim().toLowerCase()) {
                                ele[i].innerHTML = translatedLang;
                            }
                        }
                    }
                }
            }
  
    }
}


///////////////////////////////////////////////////translate by span////////////////////////////////////////////////////////
function translateBy_spanElement(language) {
    console.log('///////////////////////////////////////////////////translate By span////////////////////////////////////////////////////////');

    var ele_span = document.getElementsByTagName("span");
    var arr_span = JSON.parse(localStorage.getItem("languageArr"));

    for (i = 0; i < ele_span.length; i++) {

        var paragraph = ele_span[i].innerHTML.trim();

            ///////////////////////TranslateElements/////////////////////////
            for (a = 0; a < arr_span.length; a++) {

                var primaryLang = arr_span[a].split(',')[0].trim().toLowerCase();
                var translatedLang = arr_span[a].split(',')[1].trim();

                if (translatedLang.trim().length != 0) {
                    for (i = 0; i < ele_span.length; i++) {
                        var domElementValue = ele_span[i].innerHTML.trim().toLowerCase();
                        if (primaryLang == domElementValue) {

                            ele_span[i].innerHTML = translatedLang;
                        }

                    }
                }
            }
    }
}


/////////////////////////////////////////////////////translate a////////////////////////////////////////////////////////
function translateBy_aElement(language) {
    console.log('///////////////////////////////////////////////////translate By a////////////////////////////////////////////////////////');

    var ele_a = document.getElementsByTagName("a");
    var arr_a = JSON.parse(localStorage.getItem("languageArr"));

    for (i = 0; i < ele_a.length; i++) {

        var paragraph = ele_a[i].innerHTML.trim();

            for (a = 0; a < arr_a.length; a++) {

                var primaryLang = arr_a[a].split(',')[0].trim().toLowerCase();
                var translatedLang = arr_a[a].split(',')[1].trim();

                if (translatedLang.trim().length != 0) {
                    for (i = 0; i < ele_a.length; i++) {
                        var domElementValue = ele_a[i].innerHTML.trim().toLowerCase();
                        if (primaryLang == domElementValue) {

                            ele_a[i].innerHTML = translatedLang;
                        }

                    }
                }
            }
    }
}


/////////////////////////////////////////////////////translate by tagname=input ////////////////////////////////////////////////////////
function translateBy_inputElement(language) {
    console.log('///////////////////////////////////////////////////translate By input////////////////////////////////////////////////////////');

    var ele_input = document.getElementsByTagName("input");
    var arr = JSON.parse(localStorage.getItem("languageArr"));
    for (i = 0; i < ele_input.length; i++) {

        var paragraph = null;

        if (ele_input[i].type.toLowerCase() == 'submit') {
            paragraph = ele_input[i].value.trim();
        }

            for (a = 0; a < arr.length; a++) {

                var primaryLang = arr[a].split(',')[0].trim().toLowerCase();
                var translatedLang = arr[a].split(',')[1].trim();

                if (translatedLang.trim().length != 0) {

                    for (i = 0; i < ele_input.length; i++) {

                        var domElementValue = ele_input[i].value.trim().toLowerCase();
                        if (ele_input[i].type.toLowerCase() == 'submit') {
                            if (primaryLang == domElementValue) {
                                ele_input[i].value = translatedLang;
                            }
                        }

                    }
                }
            }

    }
}


///////////////////////////////////////////////////translate legend////////////////////////////////////////////////////////
function translateBy_legendElement(language) {
    console.log('///////////////////////////////////////////////////translate By legend////////////////////////////////////////////////////////');

    var ele_legend = document.getElementsByTagName("legend");
    var arr_legend = JSON.parse(localStorage.getItem("languageArr"));

    for (i = 0; i < ele_legend.length; i++) {

        var paragraph = ele_legend[i].innerHTML.trim();
        if (paragraph.includes('<') == false) {

                for (a = 0; a < arr_legend.length; a++) {

                    var primaryLang = arr_legend[a].split(',')[0].trim().toLowerCase();
                    var translatedLang = arr_legend[a].split(',')[1].trim();

                    if (translatedLang.trim().length != 0) {
                        for (i = 0; i < ele_legend.length; i++) {
                            var domElementValue = ele_legend[i].innerHTML.trim().toLowerCase();
                            if (primaryLang == domElementValue) {

                                ele_legend[i].innerHTML = translatedLang;
                            }

                        }
                    }
                }
        }
    }

}


/////////////////////////////////////////////////////translate th////////////////////////////////////////////////////////
function translateBy_thElement(language) {
    console.log('///////////////////////////////////////////////////translate By th////////////////////////////////////////////////////////');

    var ele_th = document.getElementsByTagName("th");

    var arr_th = JSON.parse(localStorage.getItem("languageArr"));
    for (i = 0; i < ele_th.length; i++) {

        var paragraph = ele_th[i].innerHTML.trim();
        if (paragraph.includes('<') == false) {

                for (a = 0; a < arr_th.length; a++) {

                    var primaryLang = arr_th[a].split(',')[0].trim().toLowerCase();
                    var translatedLang = arr_th[a].split(',')[1].trim();

                    if (translatedLang.trim().length != 0) {
                        for (i = 0; i < ele_th.length; i++) {
                            var domElementValue = ele_th[i].innerHTML.trim().toLowerCase();
                            if (primaryLang == domElementValue) {

                                ele_th[i].innerHTML = translatedLang;
                            }

                        }
                    }
                }
        }

    }
}


///////////////////////////////////////////////////translate label////////////////////////////////////////////////////////
function translateBy_labelElement(language) {
    console.log('///////////////////////////////////////////////////translate By label////////////////////////////////////////////////////////');

    var ele_label = document.getElementsByTagName("label");
    var arr_label = JSON.parse(localStorage.getItem("languageArr"));

    for (i = 0; i < ele_label.length; i++) {


        console.log('ele_span[i].innerHTML label-', ele_label[i].innerHTML);
        var paragraph = ele_label[i].innerHTML.trim().length < 20 ? ele_label[i].innerHTML.trim() : '';


        console.log('paragraph', paragraph);

            for (a = 0; a < arr_label.length; a++) {

                var primaryLang = arr_label[a].split(',')[0].trim().toLowerCase();
                var translatedLang = arr_label[a].split(',')[1].trim();

                if (translatedLang.trim().length != 0) {
                    for (i = 0; i < ele_label.length; i++) {
                        var domElementValue = ele_label[i].innerHTML.trim().toLowerCase();
                        if (primaryLang == domElementValue) {

                            ele_label[i].innerHTML = translatedLang;
                        }

                    }
                }
            }
    }
}



///////////////////////////////////////////////////translate h////////////////////////////////////////////////////////
function translateBy_hElement(language) {
    console.log('///////////////////////////////////////////////////translate By h////////////////////////////////////////////////////////');


    const ele_h = document.querySelectorAll("h1, h2, h3, h4, h5, h6");
    //,, document.getElementsByTagName("h3"), document.getElementsByTagName("h4"), document.getElementsByTagName("h5"), document.getElementsByTagName("h6")];

    console.log('kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', ele_h);
    var arr_h = JSON.parse(localStorage.getItem("languageArr"));

    for (i = 0; i < ele_h.length; i++) {


        console.log('ele_span[i].innerHTML h3 -', ele_h[i].innerHTML);
        var paragraph = ele_h[i].innerHTML.trim().length < 20 ? ele_h[i].innerHTML.trim() : '';

        console.log('paragraph', paragraph);

            for (a = 0; a < arr_h.length; a++) {

                var primaryLang = arr_h[a].split(',')[0].trim().toLowerCase();
                var translatedLang = arr_h[a].split(',')[1].trim();

                if (translatedLang.trim().length != 0) {
                    for (i = 0; i < ele_h.length; i++) {
                        var domElementValue = ele_h[i].innerHTML.trim().toLowerCase();
                        if (primaryLang == domElementValue) {

                            ele_h[i].innerHTML = translatedLang;
                        }

                    }
                }
            }
    }
}



///////////////////////////////////////////////////translate By className=label////////////////////////////////////////////////////////



function TranslateElements_all() {
    if (localStorage.getItem("language") != undefined) {
        var lang = localStorage.getItem("language");
        getTrans('fd', lang);
    }

}




