Binary Search es una técnica de búsqueda que funciona con el enfoque Divide and Conquer. Solía ​​buscar cualquier elemento en una matriz ordenada.

En comparación con la búsqueda lineal, la búsqueda binaria es mucho más rápida con la Complejidad de tiempo de O (logN), mientras que el algoritmo de búsqueda lineal funciona en la complejidad de tiempo O (N).

En este artículo, se discute la implementación de la búsqueda binaria en Javascript usando formas iterativas y recursivas.



Dado un conjunto ordenado de números. La tarea es buscar un elemento dado x en la matriz usando la búsqueda binaria

let recursiveFunction = function (arr, x, start, end) { 
       
    // Base Condition 
    if (start > end) return false; 
   
    // Find the middle index 
    let mid=Math.floor((start + end)/2); 
   
    // Compare mid with given key x 
    if (arr[mid]===x) return true; 
          
    // If element at mid is greater than x, 
    // search in the left half of mid 
    if(arr[mid] > x)  
        return recursiveFunction(arr, x, start, mid-1); 
    else
  
        // If element at mid is smaller than x, 
        // search in the right half of mid 
        return recursiveFunction(arr, x, mid+1, end); 
} 
   
// Driver code 
let arr = [1, 3, 5, 7, 8, 9]; 
let x = 5; 
   
if (recursiveFunction(arr, x, 0, arr.length-1)) 
    document.write("Element found!<br>"); 
else document.write("Element not found!<br>"); 
   
x = 6; 
   
if (recursiveFunction(arr, x, 0, arr.length-1)) 
    document.write("Element found!<br>"); 
else document.write("Element not found!<br>"); 