# WiX Snippet - Application with Microsoft CRT Merge Module

This *WiX Snippet* contains demonstrates how to create a Windows application installer [msi](https://technet.microsoft.com/en-us/library/cc978328.aspx) using the [*WiX Toolset*](http://wixtoolset.org/). The installer also installs the required Microsoft CRT runtime by using a merge module, the CRT merge modules are installed as part of a normal Visual Studio installation.

## Installation

From a *Microsoft Visual Studio* command prompt:
```powershell
> mkdir wixsnippet
> cd wixsnippet 
> git clone git@github.com:fun4jimmy/wixsnippet-crtmergemodule.git crtmergemodule
> cd crtmergemodule
> nmake
```

## Contents

Directory | Contents
--------- | --------
application | Code for a simple c application.
installer | WiX script to make an installer for the application.

## Requirements

* *Microsoft Visual Studio* 2012, 2013 or 2015
  * **cl.exe** - used to compile .c source files.
  * **link.exe** - used to link the compiled c object files in to the application executable.
  * **nmake.exe** - used as the build chain for the project
* Any version of the *WiX Toolset*
  * **candle.exe** - used to compile the .wxs WiX script files
  * **light.exe** - used to link the compiled WiX object files in to the application installer.
