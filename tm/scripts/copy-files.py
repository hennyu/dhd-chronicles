#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# author: uhk


import glob
from os.path import join
import shutil
from os.path import basename

wdir = "/home/ulrike/Git/dhd-chronicles"
inpaths = ["2014", "2015", "2016_text", "2017_text", "2018_text", "2019_text", "2020_text", "2022_text", "2023_text"]
txtpath = join(wdir, "tm", "text_all")

for inp in inpaths:
	for file in glob.glob(join(wdir, inp, "*.txt")):
		filename = basename(file)
		shutil.copyfile(file, join(txtpath, filename))
	
	
print("done")
