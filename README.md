# ignition_vs_gazebo

![ignition vs. gazebo](https://github.com/athackst/ignition_vs_gazebo/raw/main/.github/ignition_vs_gazebo.png)

A collection of tests between gazebo and ignition.  For a detailed analysis, see my article comparing [ignition and gazebo](https://www.allisonthackston.com/articles/ignition-vs-gazebo.html).

## Quickstart

All tests are located under the `tests` directory.

Each test has a standalone script to launch the simulator.

Simply run `./start_gazebo.sh` or `./start_ign.sh` to launch the test with the desired simulator.

## Test setup

Tests are created using `xacro`.  This ensures that the same properties are used in both simulators.  The SDF also sets several GUI properties, which are not compatible between programs.  A separate macro was created for each simulator and included in its respective test.

## Development Environment

### VSCode Container

The test setup includes a VSCode container IDE, which pre-installs gazebo 11 and ignition citadel.  If you're on a Linux system, the scripts will launch the respective simulation (including Gazebo GUI).

### Local

If you wish to run the tests natively instead, you'll need to have Gazebo and Ignition installed.

* [Gazebo 11](https://gazebosim.org/tutorials?tut=install_ubuntu&ver=11.0)
* [Ignition Citadel](https://gazebosim.org/docs/citadel/install_ubuntu)
