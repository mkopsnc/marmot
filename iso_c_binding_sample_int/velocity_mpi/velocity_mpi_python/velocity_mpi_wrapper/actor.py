import ctypes, os
import pathlib
import sys

def velocity_mpi(distance, time):
  
  lib_ext = "so"
  if sys.platform == 'darwin':
    lib_ext = "dylib"

  lib_file = '.'.join(('libvelocitympiwrapper',lib_ext))

  lib_location = pathlib.Path(__file__).parent.absolute().joinpath( lib_file ).as_posix()

  _libwrapper = ctypes.CDLL( lib_location )

  ''' we have to enforce return type '''
  _libwrapper.velocity_mpi_c_wrapper.restype = ctypes.c_int

  _func = _libwrapper.velocity_mpi_c_wrapper

  velocity = _func( ctypes.c_int(distance), ctypes.c_int(time) )

  return velocity 

def main():
  velocity_mpi(distance=40, time=2 ) 

if __name__== "__main__":
  main()
