#!/bin/bash

TARGET=target
MAINJAR=$TARGET/main.jar
DEPENDJAR=$TARGET/depend.jar

mkdir -p $TARGET
javac -d $TARGET src/Main.java src/Depend.java

jar cf $MAINJAR -C $TARGET Main.class
jar cf $DEPENDJAR -C $TARGET Depend.class

java -cp $MAINJAR:$DEPENDJAR Main