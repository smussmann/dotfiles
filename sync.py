#! /usr/bin/env python
#
# Copyright 2011 Sam Mussmann

import os
import os.path
import sys

FILES = ['.vimrc']

homedir = os.path.expanduser('~')

for dotfile in FILES:
  fname = os.path.join(homedir, dotfile)
  if not os.path.islink(fname):
      if os.path.exists(fname):
        os.rename(fname, fname + ".local")
      os.symlink(os.path.join(homedir, "dotfiles", dotfile), fname)
  
  
