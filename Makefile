all: build
rebuild: clean install build run

install:
	@./node_modules/.bin/bower install

install-app: install build
	sudo cp -R `pwd`/build/releases/rooms/mac/rooms.app /Applications/Rooms.app
	@open /Applications/Rooms.app

build:
	@./node_modules/.bin/grunt nodewebkit

run:
	@open ./build/releases/rooms/mac/rooms.app

unlink:
	@rm /Applications/Rooms.app

clean:
	@echo ""
	@rm -Rf ./node_modules
	@rm -Rf ./build
	@rm -Rf ./app/node_modules
	@rm -Rf ./app/vendor

.PHONY: install
.PHONY: build
.PHONY: run
.PHONY: link
.PHONY: unlink
.PHONY: clean