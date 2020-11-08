#!/bin/bash

set -e 

xacro --xacro-ns -o inertia_test.gazebo inertia_test.gazebo.xacro
gazebo --verbose --pause inertia_test.gazebo