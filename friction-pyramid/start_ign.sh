#!/bin/bash

set -e 

erb erb/friction_pyramid_test.ign.erb > friction_pyramid_test.ign
ign gazebo --verbose 4 friction_pyramid_test.ign