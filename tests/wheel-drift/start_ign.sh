#!/bin/bash

set -e 

xacro --xacro-ns -o wheel_test.ign wheel_test.ign.xacro
ign gazebo --verbose 4 wheel_test.ign

# Publish joint command
# ign topic -t "/model/wheel/joint/joint/cmd_vel" -m ignition.msgs.Double -p "data: 1.0"

  # Listen to joint states:
  #   ign topic -e -t /world/lessons/model/wheel/joint_state