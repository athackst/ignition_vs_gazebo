# Joint Friction

Joint friction reduces a force based on how heavy an object is.

The force balance equation:

$$
F=m\ddot{x}+b\dot{x}+kx
$$

where $F$ is an applied force, x is position, $\dot{x}$ is velocity, and $\ddot{x}$ is acceleration. $m$ is mass, $k$ is a spring constant, and $b$ is a viscous damping term.

When you plot applied torque versus speed for the unloaded system, the friction losses will be the y-intercept.

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
            <damping>0</damping>
            <friction>1</friction>
          </dynamics>
          <limit>
            <lower>-1e+16</lower>
            <upper>1e+16</upper>
          </limit>
        </axis>
      </joint>
```

## Comparison

![joint damping gazebo](media/jointfriction_gazebo.gif)

![joint damping ignition](media/jointfriction_ignition.gif)

| color | friction |
| ----- | -------- |
| green | 0        |
| teal  | 1        |
| blue  | 10       |
| pink  | 100      |
| red   | 1000     |
