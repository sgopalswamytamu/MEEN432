# Project 2 MATLAB and Simulink files
- **init.m** is the initialization file for the project. This file contains a data structure of car information with importance to Project 2.
- **gentrack.m** generates the path waypoints of the track.
- **rotate.m** is a function file that utilizes a tranformation matrix to rotate any waypoints or coordinates.
- **raceStat.m** is a function file that takes in car coordinates and path coordinates to determine if the number of loops the vehicle achieved, the time the vehicle crossed the starting point, and any information if the vehicle left the width of the track.
- **animate.m** is the MATLAB script that runs the Simulink model and animates a patch to simulate a vehicle going around the generated track.
- **p2_demo.slx** is the Simulink model that utilizes the lateral dynamics of a vehicle and pure pursuit logic to simulate an autonomous vehicle following race track waypoints and a target speed to go around the track as fast as possible without getting out of the track. The simulation run time is currently set to 400 seconds which is enough time to complete 2 laps at 15 m/s.

## Order to run the files
Run the above files in the following order:
1) **init.m**
2) **gentrack.m**
3) **animate.m**

A figure should populate that plots the race track centerline and edges and animates a patch to represent a vehicle moving around the track. The command line should also populate information based from the **raceStat.m** function.
