# Friction

Friction is the resistance to motion of one object moving relative to another.  There are several different types of friction that you can model. Here we are modeling kinetic friction by setting the  coefficient of friction. The coefficient of friction in version 1.7 of the sdformat is modeled as an ODE parameter with mu as the coefficient for the “first friction direction” and mu2 as the coefficient for the “second friction direction”. There is an additional parameter, fdir1 that can specify a specific primary friction direction relative to the link, otherwise it is modeled relative to the world.

These two diretions get modeled together using a simplified friction pyramid model.

## Example code snippet

```xml
<link>
    ...
    <collision name="${name}_collision">
    ...
        <surface>
            <friction>
                <ode>
                    <mu>1</mu>
                    <mu2>1</mu2>
                    <fdir1>1 0 0</fdir1>
                </ode>
            </friction>
        </surface>
    </collision>
</link>
```

## Comparison
![friction sxs](docs/friction_sxs.gif)

From left to right:

Cube1: Default friction.  [sdformat](http://sdformat.org/) states that if no friction is set, mu1 and mu2 are set to 1 (high friction). Therefore, this cube shouldn't move.

Cube2: `mu=1`, `mu2=0`.  The ramp is pointed down the `X` axis.  Therefore, I expect that with a high mu along that axis, the cube will not move

Cube3: `mu=0`, `mu2=1`.  The ramp is pointed down the `X` axis.  Therefore, I expect that with no friction along this direction, the cube will move down the ramp.

Cube4: `mu=1`, `mu2=0`, `fdir1=1 0 0` (pointed down the ramp).  Since the mu value is aligned with the ramp, I expect the block to stay still.

Cube5: `mu=1`, `mu2=0`, `fdir1=0 1 0` (pointed toward the sides of the ramp).  Since the mu value is perpendicular to the ramp, I expect the block to move.

Cube6: `mu=1`, `mu2=0`, `fdir1=0 0 1` (pointed up).  Since the mu value is perpendicular to the ramp, I expect the block to move.

Cube7: Cube4, rotated along the Y axis  Since the mu value is rotated to be perpendicular to the ramp, I expect the block to move.

Cube8: `mu=1` rotated along the X axis.  Since only setting mu should set both values, rotation shouldn't matter and the block shouldn't move.

Cube9: `mu=1` rotated along the X and Y axis.  Since only setting mu should set both values, rotation shouldn't matter and the block shouldn't move.

Notably, neither behaved quite how I was expecting.  In Gazebo, the mu and mu2 arguments acted on the opposite axis as I expected, with the world y frame corresponding to mu and the world x frame corresponding to mu2. In Ignition, the mu and mu2 arguments act on the axis that I expected, with x corresponding to mu and y corresponding to mu2. However, setting the fdir1 direction to orientations perpendicular to the ramp direction incorrectly makes the box stay on the ramp.