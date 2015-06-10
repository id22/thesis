#!/usr/bin/env python
import os
import sys

def main():
    f = open(sys.argv[1])
    for line in f:
        fname = line[:-1]
        if not os.path.exists(fname):
            print 'File does not exists:', fname


main()


        
