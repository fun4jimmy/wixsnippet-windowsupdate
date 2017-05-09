# WiX Snippet - Application with conditionally installed Windows Update

This *WiX Snippet* contains demonstrates how to create a Windows application installer [msi](https://technet.microsoft.com/en-us/library/cc978328.aspx) that can also install a Windows Update. In this example the application is built with a dependency on the new Windows 10 Universal CRT. The installer will check for **ucrtbase.dll** and bootstrap the required Windows Update [(2999226)](https://support.microsoft.com/en-us/help/2999226/update-for-universal-c-runtime-in-windows) if it cannot be found.

## Installation

From a *Microsoft Visual Studio* command prompt:
```powershell
> mkdir wixsnippet
> cd wixsnippet 
> git clone git@github.com:fun4jimmy/wixsnippet-windowsupdate.git windowsupdate
> cd crtmergemodule
> nmake
```

## Contents

Directory | Contents
--------- | --------
application | Code for a simple c application.
installer | WiX script to make an installer for the application.

## Requirements

* *Microsoft Visual Studio* 2015
  * **cl.exe** - used to compile .c source files.
  * **link.exe** - used to link the compiled c object files in to the application executable.
  * **nmake.exe** - used as the build chain for the project
* Any version of the *WiX Toolset*
  * **candle.exe** - used to compile the .wxs WiX script files
  * **light.exe** - used to link the compiled WiX object files in to the application installer.
