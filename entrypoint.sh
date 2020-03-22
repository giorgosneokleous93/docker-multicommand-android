#!/bin/bash
set -e

COMMAND_1=${1}
COMMAND_2=${2}
COMMAND_3=${3}
COMMAND_4=${4}
COMMAND_5=${5}

echo "Command 1: $COMMAND_1"
echo "Command 2: $COMMAND_2"
echo "Command 3: $COMMAND_3"
echo "Command 4: $COMMAND_4"
echo "Command 5: $COMMAND_5"

eval $COMMAND_1
eval $COMMAND_2
eval $COMMAND_3
eval $COMMAND_4
eval $COMMAND_5