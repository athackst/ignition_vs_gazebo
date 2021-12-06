#!/bin/bash

set -e 

xacro -o wheel_test.ign wheel_test.ign.xacro
ign gazebo --verbose 4 wheel_test.ign
