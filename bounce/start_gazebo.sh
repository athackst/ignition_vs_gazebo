#!/bin/bash

set -e 

xacro -o bounce_test.gazebo bounce_test.gazebo.xacro
gazebo --verbose --pause bounce_test.gazebo