/*
 * CommandCreator.h
 *
 *  Created on: Nov 4, 2014
 *      Author: SAINTS
 */

#ifndef COMMANDCREATOR_H_
#define COMMANDCREATOR_H_

class C_CommandCreator {
public:
	C_CommandCreator();
	virtual ~C_CommandCreator();
	void GetCommandReady();

private:
	bool Initialize();
	bool SendHVACCommand();
	bool SendHumidityCommand();
	bool SendDeviceControlCommand();
	void ProcessData();
	void ProcessTemperatureData();
	void ProcessHumidityData();
	void ProcessMicrophoneData();
};

#endif /* COMMANDCREATOR_H_ */
