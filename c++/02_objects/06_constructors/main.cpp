#include <iostream>
#include "drill.hpp"

int main(){
    Drill myDrill(false, 24.0, 0.0);
    myDrill.printStatus();

    /* Turn on, spin at 65rpm */
    myDrill.toggleState();
    myDrill.spin(65.0);
    myDrill.printStatus();

    /* Turn off, cooldown */
    myDrill.spin(0.0); 
    myDrill.coolDown();
    myDrill.toggleState();
    myDrill.printStatus();

    return 0;
}




