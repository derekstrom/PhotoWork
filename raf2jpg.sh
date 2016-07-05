#!/bin/bash

mkdir JPGs

mogrify -verbose -path JPGs -format jpg  -auto-gamma *.RAF
