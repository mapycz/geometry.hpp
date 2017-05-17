CXXFLAGS += -I include -std=c++14 -DDEBUG -O0 -Wall -Wextra -Werror

VARIANT = 1.1.4

default: test

test: tests/* include/mapbox/geometry/* Makefile
	$(CXX) tests/*.cpp $(CXXFLAGS) -o test
	./test

install:
	install -m 0755 -o root -g root -d $(DESTDIR)/usr/include/mapbox/geometry
	install -m 0644 -o root -g root include/mapbox/geometry/* $(DESTDIR)/usr/include/mapbox/geometry

clean:
	rm -f test
