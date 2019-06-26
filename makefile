# The -fpermissive is needed because of generated pointer codes void*s
glut:
	g++ --std=c++11 test.cpp -o test -lGLESv2 -lGLEW -lglut -DUSE_FULL_GL=1 -DGLES2_HELPER_USE_GLUT -fpermissive
egl:
	g++ --std=c++11 test.cpp -o test -lGLESv2 -lEGL -lX11 -fpermissive
clean:
	rm -f test
