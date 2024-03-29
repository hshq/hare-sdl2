.POSIX:
.SUFFIXES:

LIBS=-lc -lSDL2_image -lSDL2_mixer -lSDL2
# ⚠️ NOTE Modify it:
LIBS+=-L/opt/homebrew/lib

demo:
	hare build $(LIBS) cmd/demo

run:
	hare run $(LIBS) cmd/demo

clean:
	rm -rf docs demo

docs:
	mkdir -p docs/sdl2/image
	haredoc -Fhtml sdl2 > docs/sdl2/index.html
	haredoc -Fhtml sdl2::image > docs/sdl2/image/index.html
	mkdir -p docs/sdl2/mixer
	haredoc -Fhtml sdl2::mixer > docs/sdl2/mixer/index.html

.PHONY: clean demo docs run
