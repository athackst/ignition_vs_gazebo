# Bounce

Bounce is the rebound or reflection after striking a surface (such as the ground).  In the simulation, this is represented by the `restitution_coefficient`.

To model bounce in Gazebo, you need to set 3 parameters in the SDF.

1. `restitution_coefficient` [0,1] Where 0 is no bounce, and 1 is pure bounce
2. `threshold` The penetration threshold needed to apply restitution force
3. `max_vel` The maximum velocity that the restitution force can cause.

A `restitution_coefficient` must be set on both collision surfaces.  For balls to achieve infinite bounce with the ground in this simulation, the ground was given a `restitution_coefficient=1`


## Example code snippet

```xml
<link>
...
    <collision>
    ...
        <surface>
            <bounce>
                <restitution_coefficient>1</restitution_coefficient>
                <threshold>0</threshold>
            </bounce>
            <friction>
                <ode/>
            </friction>
            <contact>
                <ode>
                <max_vel>1000</max_vel>
                </ode>
            </contact>
        </surface>
    </collision>
</link>
```

## Comparison

![side by side](docs/bounce_sxs.gif)

Gazebo | Ignition with restitution coefficient ranging from 1 to 0 in 0.1 increments.


Ignition edifice now supports bounce!