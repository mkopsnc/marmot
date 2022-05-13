from mpi4py import MPI
from distance_wrapper.actor import distance
from velocity_wrapper.actor import velocity
from velocity_mpi_wrapper.actor import velocity_mpi

comm = MPI.COMM_WORLD
rank = comm.Get_rank()

''' This is a serial part '''
if rank == 0:
  print('Distance: ', distance( 20, 2 ))
  print('Velocity: ', velocity( distance( 20, 2 ), 2) )

''' We have to wait for 'serial' par '''
comm.Barrier()

result = velocity_mpi( distance( 20, 2 ), 2) 
print('Result (MPI) - counter = 1: ', result)

''' Checking SAVE attribute '''
result = velocity_mpi( distance( 20, 2 ), 2) 
print('Result (MPI) - counter = 2: ', result)

result = velocity_mpi( distance( 20, 2 ), 2) 
print('Result (MPI) - counter = 3: ', result)

