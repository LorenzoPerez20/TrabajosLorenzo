var myArray = [1,8,7,3,9,5];

//esta funcion indica si el array tiene repetidos
function repetidos(arr){
  return arr.some(function(v,i) { return arr.indexOf(v,i+1)>-1 })
}

alert(repetidos(myArray)); 
