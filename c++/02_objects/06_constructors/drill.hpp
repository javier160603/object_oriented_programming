#ifndef DRILL_HPP
#define DRILL_HPP

#include <iostream>

class Drill{
    private:
	bool state;
	float temp;
	float speed;

        /* Mutators */
	void setState(bool);
	void setTemp(float);
	void setSpeed(float);

    public:
	Drill(bool, float, float);

	/* Accessors */
	bool getState() const;
	float getTemp() const;
	float getSpeed() const;

	/* Others */
	void toggleState();
	void coolDown();
	void printStatus();
	void spin(float);

};

#endif
