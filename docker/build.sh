#!/usr/bin/env bash

if [[ ! -d /dd-opentracing-cpp/.build ]]; then
    echo "Installing dependencies ..."
    cd /tmp
    /dd-opentracing-cpp/scripts/install_dependencies.sh
fi

echo "Running cmake ..."
mkdir -p /dd-opentracing-cpp/.build
cd /dd-opentracing-cpp/.build
cmake ..

echo "Running make ..."
cd /dd-opentracing-cpp/.build; make -j 8
