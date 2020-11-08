#!/bin/bash

set -e 

xacro --xacro-ns -o friction_test.gazebo friction_test.gazebo.xacro
gazebo --verbose --pause friction_test.gazebo