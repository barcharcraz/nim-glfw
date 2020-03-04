# Static GLFW for nim

This library is always statically linked so only the functionality you use gets included in the binary. There is also no need for glfw.dll or libglfw3.dylib to be included.

## Example

```nim
import staticglfw

if init() == 0:
  raise newException(Exception, "Failed to Initialize GLFW")

var window = createWindow(800, 600, "GLFW3 WINDOW", nil, nil)

window.makeContextCurrent()
while windowShouldClose(window) == 0:
  pollEvents()
  window.swapBuffers()
  if window.getKey(KEY_ESCAPE) == 1:
    window.setWindowShouldClose(1)

window.destroyWindow()
terminate()
```