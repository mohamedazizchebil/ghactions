#!/bin/bash

#src/test.sh
EXPECTED_OUTPUT="Hello, Test!"

OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")

if [ "$OUTPUT" == "$EXPECTED_OUTPUT" ]; then
  echo "Test passed!"
else
  echo "Test failed! Expected '$EXPECTED_OUTPUT' but got '$OUTPUT'."
fi

