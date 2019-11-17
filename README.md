# nim-glfw

GLFW 3.3 interface for Nim.

Versioning follows the `x.y.z.w` scheme, where `x.y.z` corresponds to the GLFW
version (e.g. `3.3.0`) and `w` to the patch version of the Nim wrapper (e.g.
`3.3.0.2`).

## Installation

The best way to install the latest version of the package is via `nimble`:

```
nimble install glfw
```

## Examples

All examples except `minimal.nim` and `events.nim` depend on
[nim-glm](https://github.com/stavenko/nim-glm).

You can install `nim-glm` with the following command:

```
nimble install glm
```

Compile and run any of the examples by running the following command
in the [examples](/examples) directory:
~~~
nim c -r -d:glfwStaticLib <example>
~~~

Alternatively, you can invoke the `examplesStatic` or `examples` (for dynamic
linking) nimble task in the project root directory to compile all examples:

```
nimble examplesStatic
```

## Usage

This code from `examples/minimal.nim` displays a window for one second and
then terminates:

```nim
import os, glfw

proc main =
  glfw.initialize()
  var c = DefaultOpenglWindowConfig
  c.title = "Minimal Nim-GLFW example"
  var w = newWindow(c)
  sleep(1000)
  w.destroy()
  glfw.terminate()

main()
```

### Statically linking to GLFW

To link statically against GLFW, define the conditional symbol `glfwStaticLib`
(`-d:glfwStaticLib` or `--define:glfwStaticLib`).


## Documentation

Currently no documentation exists, but a symbol list can be generated by
invoking these commands from the root directory:

```
nim doc glfw.nim
nim doc glfw/wrapper.nim
```

Checking out the examples is probably the best way to get started with
the library. If you have some familiarity with GLFW, the official GLFW
documentation in conjunction with reading the Nim sources should make
everything clear.


## Contributors

[ephja](https://github.com/ephja): Original author and maintainer until v3.2

[johnnovak](http://github.com/johnnovak): Current maintainer and ports of some
of the [official GLFW examples](https://github.com/glfw/glfw/tree/master/examples).

[def-](http://github.com/def-): Support for static linking.

[AntonioArtigas](https://github.com/AntonioArtigas): GLFW 3.3 update.

