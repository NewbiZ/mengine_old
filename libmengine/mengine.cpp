#include <mengine/mengine.h>

#include <iostream>

#include <GL/glfw.h>

namespace mengine
{

void hello()
{
    bool running = true;

    if (!glfwInit())
    {
        std::cerr << "error: failed to initialize glfw" << std::endl;
        return;
    }

    if (!glfwOpenWindow(500, 500, 0, 0, 0, 0, 0, 0, GLFW_WINDOW))
    {
        std::cerr << "error: failed to open glfw window" << std::endl;
        glfwTerminate();
        return;
    }

    while (running)
    {
        glClear(GL_COLOR_BUFFER_BIT);

        glfwSwapBuffers();

        running = !glfwGetKey(GLFW_KEY_ESC) && glfwGetWindowParam(GLFW_OPENED);
    }

    glfwTerminate();
}

}

