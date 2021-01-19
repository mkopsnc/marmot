from distance_wrapper.actor import distance
from velocity_wrapper.actor import velocity

print('Distance: ', distance( 20.0, 2.0 ))
print('Velocity: ', velocity( distance( 20.0, 2.0 ), 2.0) )

