# Inertia

Inertia is the resistance of any physical object to any change in its velocity. It is an important element in simulation, as it lets the physics simulator calculate the correct dynamics of an object in simulation.

![ignition vs gazebo side by side](docs/inertia_sxs.gif)

From left to right: cube, solid sphere, hollow sphere, solid cylinder, hollow cylinder. All shapes have the same mass and are modeled with high friction. The high friction causes the cube to stay in place, while the other shapes are able to roll down the ramp as expected.

Both Ignition and Gazebo work as expected.