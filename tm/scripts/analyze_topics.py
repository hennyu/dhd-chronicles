#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# author: uhk


import pandas as pd
from os.path import join

wdir = "/home/ulrike/Git/dhd-chronicles/tm"
topics_in_texts_file = join(wdir, "mallet", "topics-in-texts_40tp-5000it-500in.csv")


topics_in_texts = pd.read_csv(topics_in_texts_file, header=None, sep="\t", index_col=0)
topics_in_texts = topics_in_texts.drop([1], axis=1).sum()
topics_in_texts.to_csv(join(wdir, "topic_sums.csv"), header=False, sep=",")
print("done")


