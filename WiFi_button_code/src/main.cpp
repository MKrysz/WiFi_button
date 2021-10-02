
#include <Arduino.h>

const int bled = 12;


void setup() {
  Serial.begin(9600);
  delay(1000);
  pinMode(bled, OUTPUT);
  digitalWrite(bled, HIGH);
  delay(500);
  digitalWrite(bled, LOW);
  Serial.println("I'm awake, but I'm going into deep sleep mode");
  ESP.deepSleep(0); 
}


void loop() {
  // put your main code here, to run repeatedly:
}
