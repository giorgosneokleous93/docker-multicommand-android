#!/bin/sh -l

set -e

initialiseGradleWrapper(){
    echo "Running './gradlew wrapper' to enable the Gradle Wrapper.."
    ./gradlew wrapper
}

WORKING_DIR="${1}"
COMMAND_1="${2}"
COMMAND_2="${3}"
COMMAND_3="${4}"
COMMAND_4="${5}"
COMMAND_5="${6}"

echo "Working Directory: $WORKING_DIR"
echo "Command 1: $COMMAND_1"
echo "Command 2: $COMMAND_2"
echo "Command 3: $COMMAND_3"
echo "Command 4: $COMMAND_4"
echo "Command 5: $COMMAND_5"

if [ -z "$COMMAND_1" ]
then
    echo "Please provide at least the first command"
    exit 1
fi;

cd $WORKING_DIR

initialiseGradleWrapper

eval $COMMAND_1
eval $COMMAND_2
eval $COMMAND_3
eval $COMMAND_4
eval $COMMAND_5