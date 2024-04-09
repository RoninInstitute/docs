#!/bin/bash
#
# generate list of links to versioned 
# content associated with tracked urls.
#

preston alias --log tsv\
 | cut -f1,3\
 | sed 's/^/[/g'\
 | sed 's+\t+](https://linker.bio/+g'\
 | sed 's/$/)/g'
