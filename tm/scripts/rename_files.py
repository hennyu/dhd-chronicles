#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# author: uhk


import pandas as pd
import glob
import os
import numpy as np
from os.path import join

wdir = "/home/ulrike/Git/dhd-chronicles/tm"
txtpath = join(wdir, "text_all")
inpath = join(wdir, "text_all/*.txt")
mdpath = join(wdir, "metadata.csv")
checkfile = join(wdir, "filenames-different.csv")


md = pd.read_csv(mdpath, header=0, sep=",", index_col=0)
ch = pd.read_csv(checkfile, header=None, sep=",")



for file in glob.glob(inpath):
	filename = os.path.basename(file)[:-4]
	
	idno = md.loc[md.filename.str.replace("(\.xml|\.txt)","") == filename].index.values
	
	if idno.size == 1:
		os.rename(join(txtpath, filename + ".txt"), join(txtpath, np.array2string(idno)[2:-2] + ".txt"))
	
	diff_name = ch.loc[ch[0] == filename][1]
	
	
	if diff_name.size == 1:
		
		os.rename(join(txtpath, filename + ".txt"), join(txtpath, str(diff_name.values)[2:-2] + ".txt"))
	
	
print("done")
