#!/bin/bash

set -e 

xacro -o wheel_test.gazebo wheel_test.gazebo.xacro
gazebo --verbose --pause wheel_test.gazebo
