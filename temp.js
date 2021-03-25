function printXml() {
    var xml = '<?xml version="1.0" encoding="UTF-8"?><Root><Classes>';
    var x = document.getElementById("formid");
    var y = document.getElementsByTagName("label");
    for (i = 0; i < x.length; i++) {
        var temp = x.elements[i].name;
        xml += "<" + y[i].textContent + ">" + x.elements[i].value + "</" + x.elements[i].name + ">" +"\n";
    }
}
