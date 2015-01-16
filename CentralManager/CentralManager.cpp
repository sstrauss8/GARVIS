/*
 * CentralManager.cpp
 *
 *  Created on: Nov 4, 2014
 *      Author: SAINTS
 */

#include <stdio.h>
#include <unistd.h>
#include "CentralManager.h"
#include "BlackLib/BlackGPIO.h"

using namespace BlackLib;

C_CentralManager::C_CentralManager(bool run) {
	Initialize();

}

C_CentralManager::~C_CentralManager() {
	// TODO Auto-generated destructor stub
}

bool C_CentralManager::Initialize(){

	return true;
}

void C_CentralManager::run(){
    //BlackGPIO test(GPIO_68,output,SecureMode);
    printf("********Central Manager Initialization********\n");
}
