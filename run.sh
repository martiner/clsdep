#!/bin/bash

set -e -x

TARGET=target
MAINJAR=$TARGET/main.jar
DEPENDJAR=$TARGET/depend.jar
SRC=src

mkdir -p $TARGET
javac -d $TARGET $SRC/Main.java $SRC/Depend.java

jar cf $MAINJAR -C $TARGET Main.class
jar cf $DEPENDJAR -C $TARGET Depend.class -C $SRC foo.txt

java -cp $MAINJAR:$DEPENDJAR Main