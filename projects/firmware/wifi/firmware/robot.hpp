#ifndef ROBOT_HPP
#define ROBOT_HPP

#include <Arduino.h>
#include <WiFi.h>
#include "DHT.h"

class Robot{
    private:
        /* H-bridge pinout */
        unsigned int in1;
        unsigned int in2;
        unsigned int in3;
        unsigned int in4;

        /* DHT11 sensor */
        DHT dht;

        /* WiFi server */
        WiFiServer wifiServer;
        WiFiClient client;
 
        void setMotor(String, String);        
        
    public:
        Robot(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);  
        void start(const char*, const char*);
        char getCommand();
	      void setDirection(String);
        void publishSensors();
	      void halt();  
};

#endif
