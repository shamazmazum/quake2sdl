Quake2 SDL
==========

This is a port of Quake2 based on icculus quake2lnx. Changes are:

* Switched to SDL2 from SDL1.2. This allows you to run the game on
  Wayland.
* The building system is now cmake.
* Lots of unmaintained source code removed, including the code for
  different platforms like Solaris, IRIX, etc. This code was almost
  identical to one found in src/linux. Also I removed the code related
  to X11 and SVGAlib.
* Software renderer has a bug in a code which draws alpha surfaces. Just
  switch drawing of alpha surfaces off now.
* Audio CD playback is switched off (Does anyone have CD drive now? ).
* Apply bugfixes from FreeBSD ports.
* Fix some compiler warnings and possible bugs.
* Add 1920x1080 screen resolution.

TODO:
* Remove even more boilerplate and machine-dependent code, use SDL
  crossplatform stuff.
* Fix alpha surfaces rendering in software renderer.
* Build CTF mode.

Building and installation
-------------------------

To build **Quake2 SDL** install SDL2, OpenGL  and jpeg libraries, then
run the following commands:
````
mkdir build
cd build
cmake ..
make
make install
````

You can pass `-DWITH_QMAX=ON` option to cmake to build an improved
OpenGL renderer or `-DWITH_RETEX=ON` to allow retexture packs. You
will need to download these packs from
[icculus](http://offload1.icculus.org/quake2/files/) site (download
`.pak` files). You will also need `pak0.pak` from the original
game. Place these files where `game.so` is installed or to
`/install/prefix/share/quake2`.
