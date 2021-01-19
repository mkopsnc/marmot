import ctypes, os
import pathlib
import sys

def distance(velocity, time):
  
  lib_ext = "so"
  if sys.platform == 'darwin':
    lib_ext = "dylib"

  lib_file = '.'.join(('libdistancewrapper',lib_ext))

  lib_location = pathlib.Path(__file__).parent.absolute().joinpath( lib_file ).as_posix()

  _libwrapper = ctypes.CDLL( lib_location )

  ''' we have to enforce return type '''
  _libwrapper.distance_c_wrapper.restype = ctypes.c_int

  _func = _libwrapper.distance_c_wrapper

  distance = _func( ctypes.c_int(velocity), ctypes.c_int(time) )

  return distance

def main():
  distance(velocity=20, time=2 ) 

if __name__== "__main__":
  main()
