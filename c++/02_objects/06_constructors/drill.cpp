#include "drill.hpp"

using std::cout;
using std::endl;

/* Constructor */
Drill::Drill(bool state, float temp, float speed){
    this->state = state;
    this->temp = temp;
    this->speed = speed;
}

/* Mutators */
void Drill::setState(bool state){
    this->state = state;
    return;
}

void Drill::setTemp(float temp){
    this->temp = temp;
    return;
}

void Drill::setSpeed(float speed){
    this->speed = speed;
    return;
}

/* Accessors */
bool Drill::getState() const{return state;}
float Drill::getTemp() const{return temp;}
float Drill::getSpeed() const{return speed;}

/* Others */
void Drill::toggleState(){
    state ? setState(false) : setState(true);
    return;
}

void Drill::coolDown(){
    setTemp(24.0);
    return;
}

void Drill::printStatus(){
    cout << "State: " << getState() << ", Temperature: "<< getTemp() << ", Speed: " << getSpeed() << endl;
    return;
}

void Drill::spin(float speed){
    setSpeed(speed);
    setTemp(40.0);
    return;
}

