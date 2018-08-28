#define USE_USBCON

#include "SparkFun_VL53L1X_Arduino_Library.h"
#include <Wire.h>

#include <ros.h>
#include <std_msgs/String.h>

ros::NodeHandle  nh;

std_msgs::String str_msg;
ros::Publisher chatter("chatter", &str_msg);

char variable1[20]="Distance1(mm) ";
char myConcatenation1[80];

char variable2[20]="Distance2(mm) ";
char myConcatenation2[80];

VL53L1X sensor;
VL53L1X sensor2;

uint8_t deviceAddress_1 = 0x28;
uint8_t deviceAddress_2 = 0x51;

void setup(void)
{
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);
  digitalWrite(12, LOW);
  digitalWrite(11, LOW);

  Wire.begin();
  Serial.begin(9600);

  pinMode(12, INPUT);
  sensor.begin();
  sensor.writeRegister(VL53L1_I2C_SLAVE__DEVICE_ADDRESS, deviceAddress_1 & 0x7F);

  pinMode(11, INPUT);
  sensor2.begin();
  sensor2.writeRegister(VL53L1_I2C_SLAVE__DEVICE_ADDRESS, deviceAddress_2 & 0x7F);
  
  nh.initNode();
  nh.advertise(chatter);
}

void loop(void)
{

  sensor.startMeasurement(deviceAddress_1); 
  while (sensor.newDataReady() == false)
    delay(5);
  
  int distance1 = sensor.getDistance(); //Get the result of the measurement from the sensor
  
  sensor2.startMeasurement(deviceAddress_2);
  while (sensor.newDataReady() == false)
    delay(5);
  
  int distance2 = sensor2.getDistance(); //Get the result of the measurement from the sensor
  
  sprintf(myConcatenation1,"%s = %i",variable1, distance1);
  str_msg.data = myConcatenation1;
  chatter.publish( &str_msg );

  sprintf(myConcatenation2,"%s = %i",variable2, distance2);
  str_msg.data = myConcatenation2;
  chatter.publish( &str_msg );
  
  nh.spinOnce();

  delay(2000);
}

