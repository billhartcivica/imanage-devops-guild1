#!/bin/sh

build() {
  ./build.sh
}

run() {
  ./run.sh
}

test() {
  ./test.sh
}

stop() {
  ./stop.sh
}

echo "Building Docker image..."
build
sleep 5
echo ""
echo "Running Docker image..."
run
sleep 5
echo ""
echo "Functional test of newly build image..."
test
sleep 5
echo ""
echo "Shutting down..."
stop

