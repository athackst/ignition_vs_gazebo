#!/bin/bash

set -e 

xacro -o joint_test.gazebo joint_test.gazebo.xacro
gazebo --verbose --pause joint_test.gazebo