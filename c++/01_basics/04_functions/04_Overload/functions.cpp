#include "functions.hpp"

int maxx(int a, int b){
    return a > b ? a : b;
}

int maxx(int a, int b, int c){
    int d = a > b ? a : b;
    return c > d ? c : d;
}

double maxx(double a, double b){
    return a > b ? a : b;
}

char maxx(char a, char b){
    return a > b ? a : b;
}


