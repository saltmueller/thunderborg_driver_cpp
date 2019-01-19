#include <iostream>
#include <chrono>
#include <thread>

#include "tborg.h"

using namespace std; 

int main() {
  ThunderborgDriver driver;
  driver.initialize();

  driver.setMotorPower(MOTOR_ONE, FORWARD, 128);  
  this_thread::sleep_for(std::chrono::milliseconds(3000));
  driver.setMotorPower(MOTOR_ONE, FORWARD, 0); 
  return 0; 
}
