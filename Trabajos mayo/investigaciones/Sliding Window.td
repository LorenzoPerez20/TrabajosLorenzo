Una ventana deslizante (en inglés, Sliding Window) es un concepto que se utiliza mucho en el desarrollo de algoritmos. Consiste en un cierto intervalo, delimitado por dos índices AA y BB, de forma tal que el intervalo incluye todos los xx tales que A≤x<BA≤x<B, es decir, nuestro intervalo es de la forma [A,B)[A,B)1).
Además, como sugiere su nombre, una característica esencial de las ventanas deslizantes es que sus extremos se van moviendo o “deslizando”, pero siempre en la misma dirección. Es decir, podemos comenzar por ejemplo con A=B=0A=B=0, e incrementar cualquiera de ellos, a elección, en cada paso, pero nunca decrementarlos. Estos dos índices o punteros siempre avanzan: cuando se incrementa AA, la ventana pierde un elemento por la izquierda, y cuando se incrementa BB, la ventana gana un elemento por la derecha.
Sobre todo en inglés y en sitios de programación competitiva, a veces se le llama a las técnicas de ventanas deslizantes “two-pointers”, en referencia a las variables AA y BB que se mueven y apuntan siempre a los bordes de la ventana.
Es muy común trabajar con datos almacenados en un cierto arreglo, de manera tal que la ventana deslizante se refiere a un cierto subarreglo del mismo en cada momento, y querer mantener cierta información sobre los datos en la ventana deslizante en todo momento. Por ejemplo, una de las cosas más fáciles de mantener es la suma de sus elementos: para esto basta con tener una variable sumaTotal, inicialmente en 0, y actualizarla ante cada movimiento: cuando se agrega un elemento, se suma su valor a sumaTotal, y cuando se pierde un elemento, se resta su valor a sumaTotal, pudiendo así mover la ventana deslizante en O(1)O(1) manteniendo su suma.
El problema que trataremos en esta sección es el de mantener el mínimo2) de la ventana deslizante. El enfoque de utilizar una simple variable ya no sirve, porque no podemos “restar” en este caso, así que no tenemos manera de manejar eficientemente (sin recalcular desde 0) el caso en que se saca un elemento.

void avanzarA() { A++; }
void avanzarB() { B++; }
int  minimoEnVentana()
{
    int mini = INF;
    for (int i = A; i < B; i++)
        mini = min(mini, v[i]);
    return mini;
}
