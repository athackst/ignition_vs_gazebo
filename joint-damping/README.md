# Joint Damping

Joint damping reduces a force based on how fast an object is moving.

The force balance equation:

$$
F=m\ddot{x}+b\dot{x}+kx
$$

where $F$ is an applied force, x is position, $\dot{x}$ is velocity, and $\ddot{x}$ is acceleration. $m$ is mass, $k$ is a spring constant, and $b$ is a viscous damping term.

When you plot applied torque versus speed for the unloaded system, the damping (viscous losses) will be the slope.

![joint damping gazebo](media/jointdamping_gazebo.gif)

![joint damping ignition](media/jointdamping_ignition.gif)