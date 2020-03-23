# docker-multicommand-android
A docker android image that enables multiple commands to run on the same image.

## Inputs

### working-dir
** Required **
Specifies the directory which the commands will run in.

**Default: ** '.'

### command1
** Required **
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
uses: giorgosneokleous93/docker-multicommand-android@v0.0.1
with:
  working-dir: '.'
  command1: 'echo "Starting runner.."'
  command2: 'app:assembleDebug'
  command3: 'lint'
  command4: 'test'
  command4: 'echo "Finished"'
```
