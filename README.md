lto-cm
=======

Read and write the text attribute of a Linear Tape Open (LTO) cartridge memory chip, also called Medium Access Memory (MAM).

How to Generate Binaries
------------------------
To build binaries, do

    make

If you want to install the files, do

    make install

To install the files into a directory other than `/usr/local`, do

    make PREFIX=<destination directory> install
    
Requirements
------------------------
This program requires *libsgutils2* library.  
If *libsgutils2* files are not located in the default path to be reffered
 by compilation,  
 you have to do below instead.

    make CPPFLAGS=<libsgutils2 headers directory> \
        LDFLAGS=<libsgutils2 library directory>

