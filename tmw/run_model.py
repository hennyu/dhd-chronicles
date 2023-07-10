#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Filename: run_model.py
# Author: #cf
# Version 0.1.0 (2016-10-17)

"""
Parameter file for model.py. 
"""

import model
from os.path import join


### Set the general working directory.
wdir = "/home/ulrike/Git/dhd-chronicles/tm"


### Shared parameters
MalletPath = "/home/ulrike/Programs/mallet-2.0.8/bin/mallet"
TextFolder = join(wdir, "text_all")
MalletFolder = join(wdir, "mallet") 
CorpusFile = join(MalletFolder, "dhd.mallet")


### Import parameters (call_mallet_import)
StoplistProject = join(wdir, "stopwords.txt")
#model.call_mallet_import(MalletPath, TextFolder, MalletFolder, CorpusFile, StoplistProject)


### Modeling parameters (call_mallet_model)
NumTopics = [40]
NumIterations = [5000]
OptimizeIntervals = [500]
NumRepetitions = 1
NumTopWords = 50
NumThreads = 4
ModelFolder = join(wdir, "mallet")

model.call_mallet_modeling(MalletPath, CorpusFile, ModelFolder, NumTopics, NumIterations, OptimizeIntervals, NumRepetitions, NumTopWords, NumThreads)
