#include "robot.hpp"

/* Motors pinout */
#define IN1  32
#define IN2  33
#define IN3  25
#define IN4  26
#define SNR  13

Robot robot(IN1, IN2, IN3, IN4, SNR);

char command;

void setup() {
    /* Robot */
    robot.begin("UMIN_robot");
    robot.halt();

    /* Serial */
    Serial.begin(115200);
    Serial.println("System ready...");
    
}

void loop() {
    while(!robot.available()){;}
    command = robot.read();

    if(command == 'f')
        robot.setDirection("forward");
    else if(command == 'b')
        robot.setDirection("backward");
    else if(command == 'p')
        robot.setDirection("ccw");
    else if(command == 'n')
        robot.setDirection("cw");
    else if(command == 's')
        robot.halt();
    else if(command == 'r')
        robot.publishSensors();
    else
        Serial.println("Wrong command...");
        
    delay(50);

}
