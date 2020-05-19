Un conjunto es una colección ordenada de elementos todos únicos.
 Por ejemplo, la lista de todos los empleados en tu trabajo es un conjunto. Cada empleado sería un elemento en el conjunto.
  En la realidad, estos elementos deberían ser almacenados usando un ID o número de Seguridad Social debido a que estos valores 
  pueden asegurar que serán únicos. Nota cómo el orden de estos elementos es irrelevante para nosotros porque ordenar IDs o números
   de Seguridad Social no tiene sentido.

Podemos llamar a nuestro conjunto de empleados el conjunto universal porque contiene a 
todos los elementos bajo consideración. Imaginemos otro conjunto. Este conjunto es la lista de empleados en tu compañía que trabajan en el departamento de ingeniería. Este es un subconjunto de nuestro conjunto de empleados porque cada elemento en el conjunto de ingeniería también existe en el conjunto de empleados. Otro subconjunto es la lista de empleados que son contratistas independientes. Aquí está cómo crearíamos estos conjuntos en JavaScript:

let engineering = new Set(['Alberta', 'Dr. Gero', 'Trunks', 'Bulma', 'Gohan']);
let freelancers = new Set(['Piccolo','Trunks', 'Vegeta', 'Goku', 'Gohan']);


