# YASS - Yet Another Static Site (generator)

Yass is a minimal static site generator written in ~80 lines of shellscript.
It uses standard unix tools and has only two external deps: [sfi](https://github.com/bomboclat/sfi) and [smu](https://github.com/Gottox/smu). 

Detailed **how-to** guide at [https://artic.nu/articles/yass.html](https://artic.nu/articles/yass.html)

### Deps:

* **C compiler**: used to build [sfi](https://github.com/bomboclat/sfi) and [smu](https://github.com/Gottox/smu)

Alternatively you can download and build/install separately :

* **[sfi](https://github.com/bomboclat/sfi)**: the template engine
* **[smu](https://github.com/Gottox/smu)**: the markdown -> html compiler

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
