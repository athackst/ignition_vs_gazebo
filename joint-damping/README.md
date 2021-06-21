# Joint Damping

Joint damping reduces a force based on how fast an object is moving.

The force balance equation:

$$
F=m\ddot{x}+b\dot{x}+kx
$$

where $F$ is an applied force, x is position, $\dot{x}$ is velocity, and $\ddot{x}$ is acceleration. $m$ is mass, $k$ is a spring constant, and $b$ is a viscous damping term.

When you plot applied torque versus speed for the unloaded system, the damping (viscous losses) will be the slope.

## Example code snippet

```xml
    <!-- Damping -->
      <joint name="wheel_joint" type="revolute">
        <parent>wheel_support</parent>
        <child>wheel</child>
        <pose relative_to="wheel_support">0 0 0 0 0 0</pose>
        <axis>
          <xyz>0 0 1</xyz>
          <dynamics>
            <damping>1</damping>
            <friction>0</friction>
          </dynamics>
          <limit>
            <lower>-1e+16</lower>
            <upper>1e+16</upper>
          </limit>
        </axis>
      </joint>
```

## Comparison

![joint damping gazebo](media/jointdamping_gazebo.gif)

![joint damping ignition](media/jointdamping_ignition.gif)

| color | damping |
| ----- | ------- |
| green | 0       |
| teal  | 0.5     |
| blue  | 1       |
| pink  | 1.5     |
| red   | 2       |
