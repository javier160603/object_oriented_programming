#include <iostream>
#include "functions.hpp"

using std::cout;
using std::endl;

int main(){
    cout << maxx(23, 12, -24) << endl;
    cout << maxx(1, 2) << endl;
    cout << maxx(0.5, 0.9) << endl;
    cout << maxx('z', 'Z') << endl;

    return 0;
}
