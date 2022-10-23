all: clean build

build:
	sudo mkarchiso -v hyprOS

clean:
	sudo rm -rfv work out
