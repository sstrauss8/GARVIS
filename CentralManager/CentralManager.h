/*
 * CentralManager.h
 *
 *  Created on: Nov 4, 2014
 *      Author: SAINTS
 */

#include "CommandCreator.h"
#include "IOManager.h"
#include "StatusMonitor.h"

#ifndef CENTRALMANAGER_H_
#define CENTRALMANAGER_H_

class C_CentralManager {
public:
	//Attributes

	//Actions
	C_CentralManager(bool run);
	virtual ~C_CentralManager();
	void Run();

private:
    //Attributes
    C_CommandCreator mCommandCreator;
    C_IOManager mIOManager;
    C_StatusMonitor mStatusMonitor;

    //Actions
    bool Initialize();
};

#endif /* CENTRALMANAGER_H_ */
