#!/bin/bash

VERSION=1

home=`dirname $0`

docker build -t glfw_build:$VERSION $home