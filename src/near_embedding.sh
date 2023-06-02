#!/bin/sh

embeddingDir=$1

# JSALTsrc=/work/k.church/githubs/JSALT_Better_Together/src

$JSALTsrc/C/near_with_floats --offset 5 --dir $embeddingDir $embeddingDir/idx.*.i |
awk '$1 > -0.5' |
cut -f1-3  | 
sort -nr -u

