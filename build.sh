#!/bin/bash

pushd src
elm-package install -y
elm-make Main.elm --output=main.js
popd
