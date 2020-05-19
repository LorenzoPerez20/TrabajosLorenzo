var lista = [1,2,3,3,4,5]
target=7;
//la funcion que se le pasa como parametro a filter, devuelve "true" si el elemento cumple la condición.
//en este caso, cuando el elemento es par
var resultado = lista.filter(function(elemento){
  //aquí se reemplazará elemento por c/u de los numeros del arreglo
  //y se retornarán solamente aquellos cuyo modulo sea igual a cero.
  return (elemento ++ ) == target
})

alert(resultado);