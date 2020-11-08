#!/bin/bash

set -e 

# xacro --xacro-ns -o friction_pyramid_test.gazebo xacro/friction_pyramid_test.gazebo.xacro
erb erb/friction_pyramid_test.gazebo.erb > friction_pyramid_test.gazebo
gazebo --verbose --pause friction_pyramid_test.gazebo