#include <iostream>
#include "change.hpp"

using std::cout;
using std::endl;

int main(){
   int n1 = 10;
   int n2 = 20;

   cout << "Original: " << n1 << ", " << n2 << endl;

   changeValue(n1, n2);
   cout << "Value: " << n1 << ", " << n2 << endl;

   changePointer(&n1, &n2);
   cout << "Pointer: " << n1 << ", " << n2 << endl;

   changeAlias(n1, n2);
   cout << "Alias: " << n1 << ", " << n2 << endl;

    return 0;
}
