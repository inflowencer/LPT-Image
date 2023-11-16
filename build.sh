#!/bin/bash

wdir=$(pwd)

src_dir="src"
build_dir="build"

mkdir -p $build_dir
rm -f $build_dir/*

# Build image
image="lpt"
cd $src_dir

apptainer build $image.sif $image.def
mv $image.sif $wdir/$build_dir/.