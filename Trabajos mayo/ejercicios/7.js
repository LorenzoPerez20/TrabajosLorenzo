function hexToDec(hex) {
    var result = 0, digitValue;
    hex = hex.toLowerCase();
    for (var i = 0; i < hex.length; i++) {
    digitValue = '0123456789abcdefgh'.indexOf(hex[i]);
    result = result * 16 + digitValue;
    }
    return result;
    }
    function Calculate() { 
    var x = document.getElementById("myText").value; 
    document.getElementById("demo").innerHTML = hexToDec(x); 
    }