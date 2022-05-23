#!/usr/bin/env bash

#title         	:temporal_analysis_memdate.sh
#description  	:
#author			:Himarsha R. Jayanetti 
#date         	:Saturday, May 21, 2022
#===================================================================================================


#===================
# MEMENTO DATE-TIME
#===================


#IA 2012=============HUMAN++++++++

python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20120202.IA.Status200 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status200.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status200.multimatch


python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20120202.IA.Status404 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status404.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status404.multimatch 


python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20120202.IA.Status503 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status503.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status503.multimatch


#IA 2012=============ROBOT++++++++

python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20120202.IA.Status200 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status200.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status200.multimatch


python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20120202.IA.Status404 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status404.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status404.multimatch 


python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20120202.IA.Status503 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status503.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status503.multimatch


#IA 2019=============HUMAN++++++++

python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.IA.Status200 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status200.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status200.multimatch


python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.IA.Status404 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status404.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status404.multimatch


python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.IA.Status503 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status503.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status503.multimatch 


#IA 2019=============ROBOT++++++++

python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.IA.Status200 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status200.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status200.multimatch


python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.IA.Status404 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status404.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status404.multimatch


python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.IA.Status503 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status503.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status503.multimatch


#PT 2019=============HUMAN++++++++

python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis_pt.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.PT.Status200 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status200.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status200.multimatch

python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis_pt.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.PT.Status404 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status404.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status404.multimatch

python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis_pt.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.PT.Status503 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status503.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status503.multimatch


#PT 2019=============ROBOT++++++++

python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis_pt.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.PT.Status200 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status200.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status200.multimatch

python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis_pt.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.PT.Status404 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status404.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status404.multimatch

python3 /data/LogAnalysis/access_pattern/temporal_analysis/temporal_analysis_pt.py /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.PT.Status503 /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status503.memdate /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status503.multimatch



#============
# YEAR Month
#============


#IA 2012 Human

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status200.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status200.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status404.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status404.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status503.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status503.memyearmonth


#IA 2012 Robot


cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status200.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status200.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status404.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status404.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status503.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status503.memyearmonth


#IA 2019 Human

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status200.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status200.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status404.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status404.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status503.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status503.memyearmonth


#IA 2019 Robot


cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status200.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status200.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status404.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status404.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status503.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status503.memyearmonth


#PT 2019 Human

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status200.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status200.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status404.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status404.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status503.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status503.memyearmonth


#PT 2019 Robot


cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status200.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status200.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status404.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status404.memyearmonth

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status503.memdate | grep -oP '\d{14}' | cut -c-6 | sort | uniq -c | sort -rn > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status503.memyearmonth


#============
#FINAL OUTPUT
#============

* IA 2012

cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status200.memyearmonth| awk '{print "IA_2012_H_200,"$2","$1}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2012.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status404.memyearmonth| awk '{print "IA_2012_H_404,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2012.csv  
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20120202.IA.Status503.memyearmonth| awk '{print "IA_2012_H_503,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2012.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status200.memyearmonth| awk '{print "IA_2012_R_200,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2012.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status404.memyearmonth| awk '{print "IA_2012_R_404,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2012.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20120202.IA.Status503.memyearmonth| awk '{print "IA_2012_R_503,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2012.csv 


* IA 2019


cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status200.memyearmonth| awk '{print "IA_2019_H_200,"$2","$1}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2019.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status404.memyearmonth| awk '{print "IA_2019_H_404,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2019.csv  
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.IA.Status503.memyearmonth| awk '{print "IA_2019_H_503,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2019.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status200.memyearmonth| awk '{print "IA_2019_R_200,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2019.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status404.memyearmonth| awk '{print "IA_2019_R_404,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2019.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.IA.Status503.memyearmonth| awk '{print "IA_2019_R_503,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_IA2019.csv 


* PT 2019


cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status200.memyearmonth| awk '{print "PT_2019_H_200,"$2","$1}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_PT2019.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status404.memyearmonth| awk '{print "PT_2019_H_404,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_PT2019.csv  
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/human_status_code/20190207.PT.Status503.memyearmonth| awk '{print "PT_2019_H_503,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_PT2019.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status200.memyearmonth| awk '{print "PT_2019_R_200,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_PT2019.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status404.memyearmonth| awk '{print "PT_2019_R_404,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_PT2019.csv 
cat /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/robo_status_code/20190207.PT.Status503.memyearmonth| awk '{print "PT_2019_R_503,"$2","$1}' >> /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/output/memdate_out_PT2019.csv 