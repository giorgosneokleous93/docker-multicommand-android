# docker-multicommand-android

![CI](https://github.com/giorgosneokleous93/docker-multicommand-android/workflows/CI/badge.svg?branch=master)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![GitHub version](https://badge.fury.io/gh/giorgosneokleous93%2Fdocker-multicommand-android.svg)](https://badge.fury.io/gh/giorgosneokleous93%2Fdocker-multicommand-android)

A docker android image that enables multiple commands to run on the same image.

## Inputs

### workingdir
**Required**
Specifies the directory which the commands will run in.

**Default:**  '.'

### command1
**Required**
The 1st command to run within the environment.

### command2
The 2nd command to run within the environment.

### command3
The 3rd command to run within the environment.

### command4
The 4th command to run within the environment.

### command5
The 5th command to run within the environment.

## Example usage

```
uses: giorgosneokleous93/docker-multicommand-android@v1.0.0
with:
  workingdir: 'sample-project'
  command1: 'echo "...Starting..."'
  command2: 'app:assembleDebug'
  command3: 'lint'
  command4: 'test'
  command4: 'echo "...Finished..."'
```

# Testing
The action has been tested at: 
- Attached Android [sample-project](https://github.com/giorgosneokleous93/docker-multicommand-android/tree/master/sample-project)
- [Full-Screen Intent Notification Example](https://github.com/giorgosneokleous93/fullscreenintentexample)

---

## License
Please see attached [License](https://github.com/giorgosneokleous93/fullscreenintentexample/blob/master/LICENSE) for more info.