#!/bin/bash

set -e 

xacro --xacro-ns -o friction_test.ign friction_test.ign.xacro
ign gazebo --verbose 4 friction_test.ign