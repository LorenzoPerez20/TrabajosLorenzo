
var d=1*prompt("increse un numero");
function Longex(d) { 
    return ((Number(d).toString(16))).slice(-2).toUpperCase() 
} 

alert(Longex(d));