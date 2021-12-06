#!/bin/bash

set -e 

xacro -o inertia_test.ign inertia_test.ign.xacro
ign gazebo --verbose 4 inertia_test.ign