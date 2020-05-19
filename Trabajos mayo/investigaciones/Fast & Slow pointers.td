Puntero lento y puntero rápido son simplemente los nombres dados a dos variables de puntero. La única diferencia es que, el puntero lento recorre la lista vinculada un nodo a la vez, mientras que un puntero rápido recorre la lista vinculada dos nodos a la vez.
A continuación se muestra un fragmento de código básico para mover punteros lentos y rápidos.

struct node * slow_ptr, * fast_ptr; 
while (! slow_ptr &&! fast_ptr && fast_ptr -> next ! = NULL ) {     
        slow_ptr = slow_ptr -> siguiente ;  // mueve un nodo hacia adelante a la vez 
        fast_ptr = fast_ptr -> siguiente -> siguiente ;   // mueve dos nodos hacia adelante a la vez 