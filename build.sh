#!/bin/bash

pushd $(dirname $0)/src
elm-package install -y
elm-make Main.elm --output=main.js
popd
