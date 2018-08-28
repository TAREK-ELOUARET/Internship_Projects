
#include "SparkFun_VL53L1X_Arduino_Library.h"
#include <Wire.h>

VL53L1X sensor;
VL53L1X sensor2;

uint8_t deviceAddress_1 = 0x28;
uint8_t deviceAddress_2 = 0x51;

void setup() {

  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);
  digitalWrite(12, LOW);
  digitalWrite(11, LOW);

  Wire.begin();
  Serial.begin(9600);

  pinMode(12, INPUT);
  if (sensor.begin() == false)
   Serial.println("Sensor offline!");
  sensor.writeRegister(VL53L1_I2C_SLAVE__DEVICE_ADDRESS, deviceAddress_1 & 0x7F);

  pinMode(11, INPUT);
  if (sensor2.begin() == false)
    Serial.println("Sensor offline!");
  sensor2.writeRegister(VL53L1_I2C_SLAVE__DEVICE_ADDRESS, deviceAddress_2 & 0x7F);
  
  Serial.println("addresses set");
}

void loop() {
  
  sensor.startMeasurement(deviceAddress_1); 
  while (sensor.newDataReady() == false)
    delay(5);
  
  int distance1 = sensor.getDistance(); //Get the result of the measurement from the sensor
  Serial.print("Distance1(mm): ");
  Serial.print(distance1);
  Serial.println();
  
  sensor2.startMeasurement(deviceAddress_2);
  while (sensor.newDataReady() == false)
    delay(5);
  
  int distance2 = sensor2.getDistance(); //Get the result of the measurement from the sensor
  Serial.print("Distance2(mm): ");
  Serial.print(distance2); 
  Serial.println();
  
  Serial.println ("I2C scanner. Scanning ...");
  byte count = 0;

  Serial.println();
  for (byte i = 1; i < 120; i++)
  {

    Wire.beginTransmission (i);
    if (Wire.endTransmission () == 0)
    {
      Serial.print ("Found address: ");
      Serial.print (i, DEC);
      Serial.print (" (0x");
      Serial.print (i, HEX);
      Serial.println (")");
      count++;
      delay (1);  // maybe unneeded?
    } // end of good response
  } // end of for loop
  Serial.println ("Done.");
  Serial.print ("Found ");
  Serial.print (count, DEC);
  Serial.println (" device(s).");
  Serial.println();
  
  delay(3000);
}
