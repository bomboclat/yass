# YASS - Yet Another Static Site (generator)

Yass is a minimal static site generator written in few lines of shellscript.
It uses standard unix tools and has only two external deps: [sfi](https://github.com/bomboclat/sfi) and [smu](https://github.com/Gottox/smu). 

Detailed **how-to** guide at [https://artic.nu/articles/yass.html](https://artic.nu/articles/yass.html)

### Deps:

* **C compiler**: used to build [sfi](https://github.com/bomboclat/sfi) and [smu](https://github.com/Gottox/smu)

Alternatively you can download and build/install separately :

* **[sfi](https://github.com/bomboclat/sfi)**: the template engine
* **[smu](https://github.com/Gottox/smu)**: the markdown -> html compiler

## Usage

	This script create static html website:

	yass [SOURCE] [TARGET] [STATIC_DIR]

	The default output dir is './build'

quick and dirty:

	git clone https://github.com/bomboclat/yass.git --recursive
	cd yass
	make
	./yass examples

The **compiled website** will be placed in the `./build` directory, test it with your favourite web server.

**Hint:** if you have installed python3 you can issue this command to **test the generated website**:

	python3 -m http.server -d build/ -b 127.0.0.1 8080

then open your browser at http://localhost:8080

## Build and install
To compile:

	make

To install:

	make install
	
You can edit the `$DESTDIR` variable to install all files on specific directory:

	mkdir destdir
	DESTDIR=destdir make install
	
To uninstall:
	
	make uninstall
	
or

	DESTDIR=destdir make uninstall
