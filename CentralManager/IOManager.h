/*
 * IOManager.h
 *
 *  Created on: Nov 4, 2014
 *      Author: SAINTS
 */

#ifndef IOMANAGER_H_
#define IOMANAGER_H_

class C_IOManager {
public:
	C_IOManager();
	virtual ~C_IOManager();
	bool SendStatus();
	bool ReceiveStatus();
	bool SendCommand();
	bool ReceiveCommand();
private:
	bool Initialize();
	char ReportDataError();
};

#endif /* IOMANAGER_H_ */
