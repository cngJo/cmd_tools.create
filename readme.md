# cmd_tools.create
create files with the command-line

## Installation

### from source
**! ATTENTION: you need to have a running v compiler installed on your system. check [this repository](https://github.com/vlang/v) for instructions**

Windows:
```
git clone https://github.com/cngjo/cmd_tools.create
cd cmd_tools.create
./build
```
> if you want to have system-wide access to the executable, add [path to the repository]/bin to your path variable.

MacOS:
```
git clone https://github.com/cngjo/cmd_tools.create
cd cmd_tools.create
bash build.sh
```
> this automatically creates an symlink to the build executable

### Pre-Build
planned for future
todo:
```
- create setup-wizard usind innosetup
- find a way to provide installers for macos and linux
- create those
```
> until those things are done, you find a precompiled windows binary in the release.

## Usage
```create LICENSE```  
=> creates a new file LICENSE in the current directory

## LICENSE
This Project is licensed under [MIT License](https://choosealicense.com/licenses/mit)