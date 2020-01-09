import staticglfw

if init() == 0:
  quit("Failed to Initialize GLFW")

var window = createWindow(800, 600, "GLFW3 WINDOW", nil, nil)

window.makeContextCurrent()
while windowShouldClose(window) == 0:
  pollEvents()
  window.swapBuffers()
  if window.getKey(KEY_ESCAPE) == 1:
    window.setWindowShouldClose(1)

window.destroyWindow()
terminate()