#!/bin/bash

set -e 

xacro --xacro-ns -o joint_test.gazebo joint_test.gazebo.xacro
gazebo --verbose --pause joint_test.gazebo