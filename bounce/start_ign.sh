#!/bin/bash

set -e 

xacro --xacro-ns -o bounce_test.ign bounce_test.ign.xacro
ign gazebo --verbose 4 bounce_test.ign