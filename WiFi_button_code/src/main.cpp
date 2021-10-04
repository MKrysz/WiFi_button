
#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>
#include <stdio.h>


const int bled = 12;
const int rled = 4;
const float vol_div = 0.175;
const char serverName[] = "http://raspberrypi.local:80";
const char WIFI_ssid[] = "Y'Ghatan";
const char WIFI_pass[] = "06094829";

int sendPOST_toWebCounter(const char exercise[32], int number);
int checkVoltage();
void warnLowVoltage();
void blink(uint8_t led, int times);

void setup() {
  pinMode(rled, OUTPUT);
  pinMode(bled, OUTPUT);
  WiFi.begin(WIFI_ssid, WIFI_pass);
  checkVoltage();
  digitalWrite(bled, HIGH);
  if(WiFi.waitForConnectResult() != WL_CONNECTED){
    digitalWrite(bled, LOW);
    digitalWrite(rled, HIGH);
    delay(10000);
    digitalWrite(rled, LOW);
    ESP.deepSleep(0);
  }
  sendPOST_toWebCounter("Nadchwyt", 6);
  digitalWrite(bled, LOW);
  ESP.deepSleep(0); 
}



void loop() {
  // put your main code here, to run repeatedly:
}


int sendPOST_toWebCounter(const char exercise[32], int number) 
{
  char requestData[128];
  WiFiClient client;
  HTTPClient http;
  sprintf(requestData, "%s_number=%u&%s=%%2B", exercise, number, exercise);
  http.begin(client, serverName);
  http.addHeader("Content-Type", "application/x-www-form-urlencoded");
  int httpResponse = http.POST(requestData);
  if(httpResponse != 200){
    blink(bled, 3);
    digitalWrite(bled, HIGH);
  }
  http.end();
  return 0;
}

/*
@brief checks voltage level of the battery and warns user if the battery is low
@return 0 if battery is fine, 1 if battery is low
*/
int checkVoltage() 
{
  const float lowBatThreshold = 3.5;
  int rawRead = analogRead(A0);
  float readVoltage = (((float)rawRead/1023.00)*(1/vol_div));
  // Serial.println(rawRead);
  // Serial.println(readVoltage);
  if(readVoltage < lowBatThreshold){
    warnLowVoltage();
    return 1;
  }
  return 0;
}

void warnLowVoltage() 
{
  blink(rled, 3);
}

void blink(uint8_t led, int times)
{
  const int onTime = 300;
  const int offTime = 300;
  for(int i = 0; i<times; i++){
    digitalWrite(led, HIGH);
    delay(onTime);
    digitalWrite(led, LOW);
    delay(offTime);
  }
}
