# Qt 5 Tools for OS/2

This is a port of the `QtTools` module of the [Qt software development framework version 5](https://www.qt.io/) to the OS/2 operating system (and its derivants). This port is carefully crafted and maintained by [bww bitwise works GmbH](https://www.bitwiseworks.com/) (also referred to as *bitwiseworks*).

The current version of the port implements all parts of the `QtTools` module except the `qdoc` tool (which requires  clang/llvm libraries not available on OS/2 yet).

Please refer to `CHANGELOG.md` for a list of OS/2-specific changes from release to release.

## Installation

The easiest and the only officially supported way to install Qt 5 is to use binary builds provided by bitwiseworks. This requires the [RPM/YUM environment for OS/2](http://trac.netlabs.org/rpm/wiki) to be installed. Note that all recent distributions of [ArcaOS](https://www.arcanoae.com/arcaos/) already have it, so nothing needs to be done if you have one of these. In the RPM/YUM environment, there is no need to install Qt 5 libraries explicitly — it will be done automatically as long as an application that needs them is about to be installed. However, if you want to play around with Qt 5 without installing any real Qt application, the best way to do so is to install official Qt 5 example and demo applications. This can be done by issuing the following command from the command line prompt:

```
yum install qt5-qttools-examples
```

If you have ArcaOS and prefer a GUI installer, then you should launch *Arca Noae Package Manager* located in the `Computer` > `Install/Remove` folder on your desktop, select `YUM` > `Quick install..` from the main menu, type `qt5-qttools-examples` in the entry field and press `Enter`.

Once successfully installed, all Qt 5 Tools example applications may be found in the `Programs` > `bitwiseworks Apps and Ports` > `Qt 5 Examples` folder on your desktop.

## Help and Support

You will find a lot of useful information about Qt 5 for OS/2 on the [Wiki pages](https://github.com/bitwiseworks/qt5-os2/wiki) of the project's main github repository. There you may also watch the progress of our work on this port. Please read these pages carefully if you need any help or want to report a problem.

## Build Instructions

### Using Qt 5 Tools libraries in your applications

Same as above, using binary builds provided by bitwiseworks is the easiest and the only supported way. Run the following command from the command line prompt to install Qt 5 Tools development packages necessary to compile and build Qt 5 programs that use the `QtTools` module:

```
yum install qt5-qttools-devel
```

This command will also install various command line Qt tools such as `lrelease` and `lupdate` as well as GUI tools such as `Qt Designer` and `Qt Linguist`. Popular GUI tools may be then found in the `Programs` > `bitwiseworks Apps and Ports` > `Qt 5 Tools` folder on your desktop.

If you take ZIP versions of packages from [bitwiseworks ZIP archives](http://rpm.netlabs.org/release/00/zip), you will have to resolve all possible dependencies yourself which is not supported and not recommended.

Once these packages are successfully installed, you may follow normal Qt instructions to build applicatoins. One thing to notice if your application uses `qmake` as a build system is that Qt 5's qmake installed by the above command is named `qmake-qt5.exe` (to avoid conflicts with `qmake.exe` from Qt 4). You may simply use this name instead of `qmake.exe` when you need to tell the build system to use Qt 5 headers and libraries.

### Building Qt 5 Tools on OS/2

All source code for the OS/2 port of the `QtTools` module is located in our [github repository](https://github.com/bitwiseworks/qttools-os2) for this module. If you want to build the Qt 5 libraries yourself, please follow our [github instructions](https://github.com/bitwiseworks/qt5-os2/wiki/Developers#building-qt).

*bww bitwiseworks GmbH\
October, 2019*
