function Lorenzo(length) {
    var result           = '';
    var characters       = 'CAT';
    var charactersLength = characters.length;
    for ( var i = 0; i < length; i++ ) {
       result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return result;
 }
 /*Resfrecar la pagina para poder ver los cambios*/
 
document.write(Lorenzo(5));

