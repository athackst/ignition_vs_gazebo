#!/bin/bash

set -e 

xacro --xacro-ns -o wheel_test.gazebo wheel_test.gazebo.xacro
gazebo --verbose --pause wheel_test.gazebo
