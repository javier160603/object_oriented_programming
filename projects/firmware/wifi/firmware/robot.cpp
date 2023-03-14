#include "robot.hpp"

Robot::Robot(unsigned int in1, unsigned int in2, unsigned int in3, unsigned int in4, unsigned int snrPin, unsigned int port) : dht(snrPin, DHT11), wifiServer(port){
    this->in1 = in1;
    this->in2 = in2;
    this->in3 = in3;
    this->in4 = in4;

    pinMode(snrPin, INPUT);
    dht.begin();
  
    pinMode(in1, OUTPUT);
    pinMode(in2, OUTPUT);
    pinMode(in3, OUTPUT);
    pinMode(in4, OUTPUT);    
    

}

void Robot::start(const char* ssid, const char* password){
    /* Static IP address cnfiguration */
    IPAddress local_IP(192, 168, 0, 191);
    IPAddress gateway(192, 168, 1, 1);
    IPAddress subnet(255, 255, 0, 0);
    IPAddress primaryDNS(8, 8, 8, 8);   
    IPAddress secondaryDNS(8, 8, 4, 4); 

    delay(1000);
    /* Configuring static IP address*/
    if (!WiFi.config(local_IP, gateway, subnet, primaryDNS, secondaryDNS)) 
      Serial.println("STA Failed to configure");

    /* Connecting t the WiFi network*/
    WiFi.begin(ssid, password);
    while (WiFi.status() != WL_CONNECTED) {
      Serial.println("Connecting to WiFi...");
      delay(1000);
    }
 
    Serial.println("Connected to the WiFi network");
    Serial.println(WiFi.localIP());
 
    wifiServer.begin();
}

char Robot::getCommand(){
    /* Wait for a client */
    if(!client){
      do{
          client = wifiServer.available();
          Serial.println("Waiting for a client...");
          delay(1000);
      }while(!client);
      Serial.println("Conected to a client");
    }
   
    while (client.connected()) {
      if(client.available()) {
        char command = client.read();
        return command;
      }
      delay(10);
    }
    
    client.stop();
    return '4';
}

void Robot::setMotor(String motor, String dir){
    if (motor == "right" and dir == "positive"){
        digitalWrite(in1, LOW);
        digitalWrite(in2, HIGH);
     }
     else if (motor == "right" and dir == "negative"){
        digitalWrite(in1, HIGH);
        digitalWrite(in2, LOW);
     }
     else if (motor == "left" and dir == "positive"){
        digitalWrite(in3, LOW);
        digitalWrite(in4, HIGH);
     }
     else if (motor == "left" and dir == "negative"){
        digitalWrite(in3, HIGH);
        digitalWrite(in4, LOW);
     }
     else
         Serial.println("Wrong motor direction");
}

void Robot::setDirection(String dir){
    if (dir == "forward"){
            setMotor("right", "negative");
            setMotor("left", "positive");
            Serial.println("Robot: moving forward");
    }
    else if (dir == "backward"){
            setMotor("right", "positive");
            setMotor("left", "negative");
            Serial.println("Robot: moving backward");
    }
    else if (dir == "cw"){
            setMotor("right", "positive");
            setMotor("left", "positive");
            Serial.println("Robot: moving cw");
    }
    else if (dir == "ccw"){
            setMotor("right", "negative");
            setMotor("left", "negative");
            Serial.println("Robot: moving ccw");
    }
    else
        Serial.println("Wrong robot direction");
               
    return;
}

void Robot::halt(){
    digitalWrite(in1, LOW);
    digitalWrite(in2, LOW);
    digitalWrite(in3, LOW);
    digitalWrite(in4, LOW);
    Serial.println("Robot: stoped");

    return;
}


void Robot::publishSensors(){
    client.print(dht.readHumidity());
    delay(500);
    client.print(dht.readTemperature());
    Serial.println("Robot: sensors");

    return;
}
