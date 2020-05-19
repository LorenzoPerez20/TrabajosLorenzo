Dado un conjunto de intervalos de tiempo en cualquier orden, 
combine todos los intervalos superpuestos en uno y genere el resultado que
 solo debe tener intervalos mutuamente excluyentes. Deje que los intervalos se representen como pares de enteros para simplificar.
  Por ejemplo, deje que el conjunto de intervalos dado sea {{1,3}, {2,4}, {5,7}, {6,8}}. 
  Los intervalos {1,3} y {2,4} se superponen entre sí, por lo que deben fusionarse y convertirse en {1, 4}. 
Del mismo modo, {5, 7} y {6, 8} deben fusionarse y convertirse en {5, 8}

function merge(intervals) {
  const mergeInterval = (ac, x) => (!ac.length || ac[ac.length - 1][1] < x[0]
    ? ac.push(x)
    : ac[ac.length - 1][1] = Math.max(ac[ac.length - 1][1], x[1]), ac);

  return intervals
    .sort((a,b) => a[0] - b[0])
    .reduce(mergeInterval, []);
};