#!/bin/bash

set -e 

xacro -o joint_test.ign joint_test.ign.xacro
ign gazebo --verbose 4 joint_test.ign
