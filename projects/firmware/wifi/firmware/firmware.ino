#include "robot.hpp"

/* Motors pinout */
#define IN1  32
#define IN2  33
#define IN3  25
#define IN4  26

/* Sensor pinout */
#define SNR  13

/* WiFi */
#define port 80
#define ssid "technomancer2501"
#define password "P0$31d0n"

Robot robot(IN1, IN2, IN3, IN4, SNR, port);

void setup() {
    Serial.begin(115200);
    
    /* Robot */
    robot.start(ssid, password);
    robot.halt();

    Serial.println("System ready...");   
}

void loop() {
    char command = robot.getCommand();

    if(command == '0')
        robot.setDirection("forward");
    else if(command == '1')
        robot.setDirection("backward");
    else if(command == '2')
        robot.setDirection("ccw");
    else if(command == '3')
        robot.setDirection("cw");
    else if(command == '4')
        robot.halt();
    else if(command == '5')
        robot.publishSensors();
    else
        Serial.println("Wrong command...");
        
    delay(50);

}
