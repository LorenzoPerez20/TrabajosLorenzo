La clasificación por ciclos es un algoritmo de clasificación inestable e inestable , una clasificación de comparación que es teóricamente óptima en términos del número total de escrituras en la matriz original , a diferencia de cualquier otro algoritmo de clasificación en el lugar. Se basa en la idea de que la permutación a clasificar puede factorizarse en ciclos , que pueden rotarse individualmente para dar un resultado ordenado.

A diferencia de casi cualquier otro tipo, los elementos nunca se escriben en otra parte de la matriz simplemente para apartarlos de la acción. Cada valor se escribe cero veces, si ya está en su posición correcta, o se escribe una vez en su posición correcta. Esto coincide con el número mínimo de sobrescrituras requeridas para una ordenación in situ completada.

Minimizar la cantidad de escrituras es útil cuando hacer escrituras en un conjunto de datos enorme es muy costoso, como ocurre con las EEPROM como la memoria Flash, donde cada escritura reduce la vida útil de la memoria .

Para ilustrar la idea del ciclo de clasificación, considere una lista con elementos distintos. Dado un elemento a , podemos encontrar el índice en el que ocurrirá en la lista ordenada simplemente contando el número de elementos en la lista completa que son más pequeños que a . Ahora

Si el elemento ya está en la posición correcta, no haga nada.
Si no es así, lo escribiremos en su posición prevista. Esa posición está habitada por un elemento diferente b , que luego tenemos que mover a su posición correcta. Este proceso de desplazar elementos a sus posiciones correctas continúa hasta que un elemento se mueve a la posición original de a . Esto completa un ciclo.

// CPP implementation of Circle Sort 
#include<bits/stdc++.h> 
using namespace std; 
  
// Function to perform circular swaps recursively 
// This function returns true if there was a swap 
// operation performed. 
bool circleSortRec(int a[], int low, int high) 
{ 
    bool swapped = false; 
  
    // base case 
    if (low == high) 
        return false; 
  
    // storing the upper and lower bounds 
    // of list to be used later in the 
    // recursive case 
    int lo = low, hi = high; 
  
    while (lo < hi) 
    { 
        // swaps the pair of elements 
        // if true 
        if (a[lo] > a[hi]) 
        { 
            swap(a[lo], a[hi]); 
            swapped = true; 
        } 
        lo++; 
        hi--; 
    } 
  
    // special case arises only for list 
    // of odd size 
    if (lo == hi) 
        if (a[lo] > a[hi + 1]) 
        { 
            swap(a[low], a[hi+1]); 
            swapped = true; 
        } 
  
    // recursive case to check the 
    // traverse lists as sub lists 
    int mid = (high - low) / 2; 
    bool firstHalf = circleSortRec(a, low, low+mid); 
    bool secondHalf = circleSortRec(a, low+mid+1, high); 
  
    return swapped || firstHalf || secondHalf; 
} 
  
// This function mainly calls circleSortRec 
void circleSort(int a[], int n) 
{ 
    // Keep calling circleSortRec while 
    // there is a swap operation. 
    while (circleSortRec(a, 0, n-1)) 
    { 
       ; 
    } 
} 
  
// Driver program 
int main() 
{ 
    int a[] = {7, 5, 3, 1, 2, 4, 6, 8}; 
    int n = sizeof(a)/sizeof(a[0]); 
  
    printf("\nUnsorted : "); 
    for (int i=0; i<n; i++) 
        cout << a[i] << " "; 
  
    circleSort(a, n); 
  
    printf("\nSorted : "); 
    for (int i=0; i<n; i++) 
        cout << a[i] << " "; 
  
    return 0; 
}