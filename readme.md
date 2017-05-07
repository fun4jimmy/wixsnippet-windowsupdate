# WiX Snippet - Basic Application

This *WiX Snippet* contains the bare minimum required to generate a simple Windows application installer [msi](https://technet.microsoft.com/en-us/library/cc978328.aspx) using the [*WiX Toolset*](http://wixtoolset.org/).

## Installation

From a *Microsoft Visual Studio* command prompt:
```powershell
> mkdir wixsnippet
> cd wixsnippet 
> git clone git@github.com:fun4jimmy/wixsnippet-basicapplication.git basicapplication
> cd basicapplication
> nmake
```

## Contents

Directory | Contents
--------- | --------
application | Code for a simple c application.
installer | WiX script to make an installer for the application.

## Requirements

* Any version of *Microsoft Visual Studio*
  * **cl.exe** - used to compile .c source files.
  * **link.exe** - used to link the compiled c object files in to the application executable.
  * **nmake.exe** - used as the build chain for the project
* Any version of the *WiX Toolset*
  * **candle.exe** - used to compile the .wxs WiX script files
  * **light.exe** - used to link the compiled WiX object files in to the application installer.
