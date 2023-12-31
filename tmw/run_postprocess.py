#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Filename: my_tmw.py
# Author: #cf
# Version 0.2.0 (2015-08-27)


import postprocess
from os.path import join

### Set the general working directory.
wdir = "/home/ulrike/Git/dhd-chronicles/tm"

### Set parameters as used in the topic model
NumTopics = 40
NumIterations = 5000
OptimizeIntervals = 500
param_settings = str(NumTopics) + "tp-" + str(NumIterations) + "it-" + str(OptimizeIntervals) + "in"

### create_mastermatrix
### Creates the mastermatrix with all information in one place.
corpuspath = join(wdir, "text_all", "*.txt")
outfolder = join(wdir, "aggregates", param_settings)
mastermatrixfile = "mastermatrix.csv"
metadatafile = join(wdir, "metadata.csv")
topics_in_texts = join(wdir, "mallet", "topics-in-texts_" + param_settings + ".csv")
number_of_topics = NumTopics
useBins = False
binDataFile = join(wdir, "3_bins", "segs-and-bins.csv")
version  = "208+" # which MALLET version is in use?
postprocess.create_mastermatrix(corpuspath, outfolder, mastermatrixfile, metadatafile, topics_in_texts, number_of_topics, useBins, binDataFile, version)

### calculate_averageTopicScores
### Based on the mastermatrix, calculates various average topic score datasets.
mastermatrixfile = join(wdir, "aggregates", param_settings, "mastermatrix.csv")
outfolder = join(wdir, "aggregates", param_settings)
# targets: one or several:author|decade|subgenre|author-gender|idno|segmentID|narration|narrative-perspective (according to available metadata)
targets = ["idno", "year", "type"]
postprocess.calculate_averageTopicScores(mastermatrixfile, targets, outfolder)

### build_gephitable
target = "subgenre"
aggregationfile = join(wdir, "data", "7_aggregates", param_settings, "avgtopicscores_by-" + target + ".csv")
gephifile = join(wdir, "model", "aggregates", param_settings, "gephi-input-" + "target" + ".csv")
#postprocess.build_gephitable(aggregationfile, gephifile, target)


### save_firstWords
### Saves the first words of each topic to a separate file.
topicWordFile = join(wdir, "mallet", "topics-with-words_" + param_settings + ".csv")
outfolder = join(wdir, "aggregates", param_settings)
filename = "firstWords.csv"
postprocess.save_firstWords(topicWordFile, outfolder, filename)

### Save topic ranks
topicWordFile = join(wdir, "mallet", "topics-with-words_" + param_settings + ".csv")
outfolder = join(wdir, "aggregates", param_settings)
filename = "topicRanks.csv"
postprocess.save_topicRanks(topicWordFile, outfolder, filename)

### Average topic scores for two criteria (binID + subgenre)
mastermatrixfile = join(wdir, "aggregates", param_settings, "mastermatrix.csv")
targets = ["year", "type"]
outfolder = join(wdir, "aggregates", param_settings)
postprocess.calculate_complexAverageTopicScores(mastermatrixfile, targets, outfolder)
