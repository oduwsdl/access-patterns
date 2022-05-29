import sys

# import gzip
# import os
# import re
# import zipfile
# from urllib.parse import urlparse 
# import csv
#import pandas as pd

__author__ = "himarsha"
__date__ = "$May 29, 2022 10:10:37 AM$"


"""
20190207-wwwb-front1234-access.log.sorted.sess.metadata_v1
pt.logfile.2019-07-07.sorted.sess.metadata_v1
"""

# path1 = "/data/LogAnalysis/access_pattern/datasets/fullday_sample/session_data/"
# path2 = "/data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots"

sessinfo = sys.argv[1]
human = sys.argv[2]
bot = sys.argv[3]
human_out = sys.argv[4]
bot_out = sys.argv[5]


if __name__ == "__main__":

    # df1 = pd.read_csv(human, sep='\t',header = None)
    # human_IDs = df1 [0]
    # print("Human sess ID list created ...")
    # df2 = pd.read_csv(bot, sep='\t',header = None)
    # bot_IDs = df2[0]
    # print("Bot sess ID list created ...")

    #The human_IDs and bot_IDs are lists and they contain duplicate values
    #Converting to set to remove duplicate and easy comparison

    human_IDs = []
    bot_IDs = []

    with open(human,"r") as human_in:
        for line in human_in:
            id = line.split("\t")[0]
            human_IDs.append(id)
    print("Human sess ID list created ...")

    with open(bot,"r") as bot_in:
        for line in bot_in:
            id = line.split("\t")[0]
            bot_IDs.append(id)
    print("Bot sess ID list created ...")


    human_IDs = set(human_IDs)
    bot_IDs = set(bot_IDs)

    print("Iterating through sess info file ...")
    with open(sessinfo,"r") as f:
        with open(human_out,"w") as human_out1:
            human_out1.write("I\tallreq\thtml_count\tim_count\tIH\tBS\tsd\tsrt\tstd\tref_count\tem_count\tIA\tRA\tim_ref\tem_ref\tur\n")
            with open(bot_out,"w") as bot_out1:
                bot_out1.write("I\tallreq\thtml_count\tim_count\tIH\tBS\tsd\tsrt\tstd\tref_count\tem_count\tIA\tRA\tim_ref\tem_ref\tur\n")
                for line in f:
                    #print(line)
                    I,allreq,html_count,im_count,IH,BS,sd,srt,std,ref_count,em_count,IA,RA,im_ref,em_ref,ur = line.split("\t")
                    #print(I)
                    if I == "I":
                        botvsHuman = "botvsHuman"
                        continue
                    #check if this id is in bot file or human file
                    I = set([I])
                    #print( I)
                    is_Human = I.intersection(human_IDs)
                    is_Bot = I.intersection(bot_IDs)
                    if is_Human:
                        botvsHuman = "H"
                        human_out1.write(line)
                    elif is_Bot:
                        botvsHuman = "B"
                        bot_out1.write(line)
                    else:
                        botvsHuman = "Unknown"
                    # print(I,botvsHuman)
                    human_out1.flush()
                    bot_out1.flush()
    print("Done.")











