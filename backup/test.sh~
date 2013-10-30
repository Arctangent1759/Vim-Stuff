#!/bin/bash

passed=0
total=0

for testname in $(ls | gawk '/.out/ {split($1,a,".");split($1,b,"_");if (b[1]!="my")print(a[1]);}'); do
  echo "Running tests for $testname..."
  java -jar logisim-generic-2.7.1.jar $testname.circ -tty table > my_$testname.out
  if [ $(diff $testname.out my_$testname.out) ];
  then
	echo "        Test $testname failed."
  else
	echo "        Test $testname passed."
	passed=$((passed+1))
  fi
  total=$((total+1))
done
echo "Passed $passed out of $total tests."
