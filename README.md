# addpath

Easy to Add/Del the path of your exe file to the "Path" of Windows Environment Variable.

## Features

* The functionality will be provided with only the one `.c` file.
    * You don't need anything more.
* Easy to list up current variables to check it.
* Easy to add and delete the path to/from the `Path` environment variable.
    * It will be skipped and avoided to duplicate if your path has already existed when adding it.
    * Nothing is done if a path does not exist in the `Path` when deleting it.
* No problem with `\` at the tail of your path string.
    * When trying to add `aaa` and there is an entry of `aaa\`, `aaa` will be not added.
    * When trying to delete `aaa` and there is no entry of `aaa`, `aaa\` will be also checked and deleted if it exists.

# How to Build

If you want it to run by a silent or background, build it as follows.

```
$ cl.exe /DWINMAIN addpath.c Advapi32.lib User32.lib /link /SUBSYSTEM:WINDOWS
```

If you want it as a console command, build it as follows.

```
$ cl.exe addpath.c Advapi32.lib User32.lib
```

# How to Use

## In the Installer Script of NSIS

The examples are based on the following condition.

* The file is `addpath.exe`.
* `addpath.exe` will be installed under `$INSTDIR`
* The path you want to add is `$INSTDIR\bin`
* When you use `addpath.exe` in the NSIS script, you had better build it to run it as a background.

### For Installation

Add the file of `"addpath.exe"` to be installed.

```nsi
SetOutPath "$INSTDIR"
File "addpath.exe"
```

At the bottom of installation's section, write it as follows.

```nsi
ExecWait '"$INSTDIR\addpath.exe" add system "$INSTDIR\bin"'
ExecWait '"$INSTDIR\addpath.exe" add user "$INSTDIR\bin"'
```

### For Uninstallation

At the top of uninstallation's section, write it as follows.

```nsi
ExecWait '"$INSTDIR\addpath.exe" del user "$INSTDIR\bin"'
ExecWait '"$INSTDIR\addpath.exe" del system "$INSTDIR\bin"'
```

## At the Command line

### For User Environment Variable

```
$ addpath add user "C:\Program Files\YourProduct\bin"
$ addpath del user "C:\Program Files\YourProduct\bin"
$ addpath list user
```

### For System Environment Variable

Note that you need an admin privilege to use "system".

```
$ addpath add system "C:\Program Files\YourProduct\bin"
$ addpath del system "C:\Program Files\YourProduct\bin"
$ addpath list system
```

# Please...

If you have time and you think this is useful, please review the source code.
And push the star before leaving this page.

A bug report is always welcome.

Thanks a lot.

