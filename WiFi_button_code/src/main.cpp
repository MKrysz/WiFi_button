
#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>
#include <stdio.h>


const int gled = 5;
const int bled = gled;
const int rled = 4;
const float vol_div = 0.1754386;
const int adc_en = 13;
const int adc_in = A0;
const char serverName[] = "http://raspberrypi.local:80";
const char WIFI_ssid[] = "Y'Ghatan";
const char WIFI_pass[] = "06094829";

int sendPOST_toWebCounter(const char exercise[32], int number);
int checkVoltage();
void warnLowVoltage();
void blink(uint8_t led, int times, int onTime = 300, int offTime = 300);
void turnOff();

void setup() {
  uint32 start_time = millis();
  pinMode(rled, OUTPUT);
  pinMode(bled, OUTPUT);
  pinMode(gled, OUTPUT);
  pinMode(adc_en, OUTPUT);
  digitalWrite(rled, HIGH);
  digitalWrite(bled, HIGH);
  digitalWrite(gled, HIGH);
  digitalWrite(adc_en, LOW);
  Serial.begin(115200);
  Serial.println("booting up...");
  WiFi.begin(WIFI_ssid, WIFI_pass);
  checkVoltage(); 
  int i = 50;
  while((!WiFi.isConnected())&&(i --> 0)){
    blink(bled, 1, 100, 100);
  }
  Serial.println(WiFi.SSID());
  Serial.println(WiFi.localIP());
  digitalWrite(bled, LOW);
  Serial.println("Sending query...");
  int queryRes = sendPOST_toWebCounter("Nadchwyt", 6);
  if (queryRes == 200)
  {
    Serial.println("Query send successfully");
    digitalWrite(bled, HIGH);
    digitalWrite(gled, LOW);
    delay(1000);
  }
  else
  {
    Serial.println("An error has occured during sending query");
    Serial.print("Code received : ");
    Serial.print(queryRes);
    Serial.println();
    digitalWrite(bled, HIGH);
    digitalWrite(rled, LOW);
    delay(10000);
  }
  
  Serial.println("shutting off...");
  Serial.print("Overall on duration = ");
  Serial.print(millis()-start_time);
  turnOff(); 
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
  http.end();
  return httpResponse;
}

/*
@brief checks voltage level of the battery and warns user if the battery is low
@return 0 if battery is fine, 1 if battery is low
*/
int checkVoltage() 
{
  const float lowBatThreshold = 2.5;
  digitalWrite(adc_en, HIGH);
  int rawRead = analogRead(adc_in);
  float readVoltage = (((float)rawRead/1023.00)*(1/vol_div));
  // Serial.println(rawRead);
  Serial.print("Uzas = ");
  Serial.print(readVoltage);
  Serial.println('V');
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

void blink(uint8_t led, int times, int onTime, int offTime)
{
  for(int i = 0; i<times; i++){
    digitalWrite(led, LOW);
    delay(onTime);
    digitalWrite(led, HIGH);
    delay(offTime);
  }
}


void turnOff()
{
  digitalWrite(rled, HIGH);
  digitalWrite(bled, HIGH);
  digitalWrite(gled, HIGH);
  delay(10);
  ESP.deepSleep(0);
}