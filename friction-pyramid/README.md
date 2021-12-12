# Friction Pyramid

Both Gazebo and Ignition use a friction pyramid approximation.  

During tests of [friction](/tests/friction/README.md) I noticed that Gazebo and Ignition set the values differently in x and y when using the default world frame which is clearly shown below

![ignition](docs/friction_pyramid_ignition.png)
![gazebo](docs/friction_pyramid_gazebo.png)

Also of note is that while the ignition simulation produces much smoother results, it comes at a cost to the real-time factor.

Update: Edifice

![ignition edifice](docs/friction_pyramid_ignition_edifice.png)

The same issues seen with friction in Edifice are also represented in the pyramid -- world coordinates for friction no longer appear to be properly represented.