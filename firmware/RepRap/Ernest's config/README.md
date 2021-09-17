- Mellow Fly CDY v2 board + TMC drivers x 6
- 0.9° XY steppers
- XY sensorless homing
- 3 independent belt drives for Triple-Z enabling auto bed tramming
- An inductive sensor as Z endstop and ABL sensor


Calculation of steps / mm


0.9° XY stepper: 
400 stepsPerRound * 16 microstepsPerStep / (2 mmPerTooth * 16 teethPerRound) = 200 steps/mm


1.8° Triple-Z stepper with 16T driving pulley:
200 stepsPerRound * 16 microstepsPerStep / (2 mmPerTooth * 16 teethPerRound) * 2 movingPulleyRatio = 200 steps/mm
