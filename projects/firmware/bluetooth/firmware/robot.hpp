#ifndef ROBOT_HPP
#define ROBOT_HPP

#include <Arduino.h>
#include "BluetoothSerial.h"
#include "DHT.h"

class Robot : public BluetoothSerial{
    private:
        /* H-bridge pinout */
        unsigned int in1;
        unsigned int in2;
        unsigned int in3;
        unsigned int in4;

        /* DHT11 sensor */
        DHT dht;

        void setMotor(String, String);        
        
    public:
        Robot(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);  
	      void setDirection(String);
        void publishSensors();
	      void halt();  
};

#endif
