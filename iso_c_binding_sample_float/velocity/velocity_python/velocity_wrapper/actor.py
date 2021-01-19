import ctypes, os
import pathlib
import sys

def velocity(distance, time):
  
  lib_ext = "so"
  if sys.platform == 'darwin':
    lib_ext = "dylib"

  lib_file = '.'.join(('libvelocitywrapper',lib_ext))

  lib_location = pathlib.Path(__file__).parent.absolute().joinpath( lib_file ).as_posix()

  _libwrapper = ctypes.CDLL( lib_location )

  ''' we have to enforce return type '''
  _libwrapper.velocity_c_wrapper.restype = ctypes.c_float

  _func = _libwrapper.velocity_c_wrapper

  velocity = _func( ctypes.c_float(distance), ctypes.c_float(time) )

  return velocity 

def main():
  velocity(distance=40.0, time=2.0 ) 

if __name__== "__main__":
  main()
