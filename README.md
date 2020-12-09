<p align="center">
  <img src="https://raw.githubusercontent.com/mkopsnc/marmot/main/images/marmot.png">
</p>

# Marmot

Sample code illustrating the way of wrapping `Fortran` code inside `Python`. In the execution process we go all the way down via `C` bindings.

```
Python -> C layer (shared library) -> Fortran (static library)
```

This project is compatible with `macOS` and `Linux`.

# Requirements

* `Python 3.8`
* `GNU Fortran 8.3.0`
* `GNU C 8.3.0`
* `venv`
* `GNU Make`

# Building

Building whole project is quite simple. Clone the project

```
> git clone https://github.com/mkopsnc/marmot.git
```

Once it is in place build the code

```
> cd marmot/pip_sample
> ./build.sh
```

This will build all the components that are part of the solution (only native code is build). After native code is in place, you can import `pip` based Python wrappers into your virtual environment.

```
> python3 -m venv venv-38
> source venv-38/bin/activate
> pip3 install --upgrade --force-reinstall `pwd`/distance/distance_python
> pip3 install --upgrade --force-reinstall `pwd`/velocity/velocity_python
```

Above steps will install Python modules together with native code. You are ready to use wrappers inside Python.

```
from distance_wrapper.actor import distance
from velocity_wrapper.actor import velocity

print('Distance: ', distance( 20.0, 2.0 ))
print('Velocity: ', velocity( distance( 20.0, 2.0 ), 2.0) )
```

Alternativelly, run

```
> python3 ./run_codes.py
```
