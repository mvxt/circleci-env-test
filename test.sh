#!/bin/sh

echo "$TEST_VAR"
echo $TEST_VAR
echo "TEST_VAR=$TEST_VAR"
echo "test_var=$TEST_VAR"
echo "test_var=${TEST_VAR}"
echo "test_var--->${TEST_VAR}"
echo "test_var--->${ANOTHER_TEST_VAR}@example.io/1234567"
