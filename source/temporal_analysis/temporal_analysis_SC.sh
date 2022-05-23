#!/usr/bin/env bash

#title         	:temporal_data_analysis.sh
#description  	:
#author			:Himarsha R. Jayanetti 
#date         	:Saturday, May 21, 2022
#===================================================================================================


#=========================
# Separating Status Codes
#=========================

#IA 2012=============HUMAN++++++++

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20120202.wayback.access.log.sorted.v2.tag.cleaneds2.out2.humansess | awk '$9==200 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20120202.IA.Status200

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20120202.wayback.access.log.sorted.v2.tag.cleaneds2.out2.humansess | awk '$9==404 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20120202.IA.Status404

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20120202.wayback.access.log.sorted.v2.tag.cleaneds2.out2.humansess | awk '$9==503 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20120202.IA.Status503


#IA 2019=============HUMAN++++++++

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20190207-wwwb-front1234-access.log.sorted.v2.tag.cleaneds2.out2.humansess | awk '$9==200 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.IA.Status200

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20190207-wwwb-front1234-access.log.sorted.v2.tag.cleaneds2.out2.humansess | awk '$9==404 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.IA.Status404

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20190207-wwwb-front1234-access.log.sorted.v2.tag.cleaneds2.out2.humansess | awk '$9==503 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.IA.Status503

#PT 2019=============HUMAN++++++++

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/pt.logfile.2019-07-07.sorted.v2.tag.cleaneds2.out2.humansess | awk '$9==200 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.PT.Status200

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/pt.logfile.2019-07-07.sorted.v2.tag.cleaneds2.out2.humansess | awk '$9==404 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.PT.Status404

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/pt.logfile.2019-07-07.sorted.v2.tag.cleaneds2.out2.humansess | awk '$9==503 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/human_status_code/20190207.PT.Status503


#IA 2012=============ROBOT++++++++

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20120202.wayback.access.log.sorted.v2.tag.cleaneds2.out2.robosess | awk '$9==200 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20120202.IA.Status200

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20120202.wayback.access.log.sorted.v2.tag.cleaneds2.out2.robosess | awk '$9==404 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20120202.IA.Status404

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20120202.wayback.access.log.sorted.v2.tag.cleaneds2.out2.robosess | awk '$9==503 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20120202.IA.Status503


#IA 2019=============ROBOT++++++++

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20190207-wwwb-front1234-access.log.sorted.v2.tag.cleaneds2.out2.robosess | awk '$9==200 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.IA.Status200

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20190207-wwwb-front1234-access.log.sorted.v2.tag.cleaneds2.out2.robosess | awk '$9==404 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.IA.Status404

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/20190207-wwwb-front1234-access.log.sorted.v2.tag.cleaneds2.out2.robosess | awk '$9==503 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.IA.Status503

#PT 2019=============ROBOT++++++++

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/pt.logfile.2019-07-07.sorted.v2.tag.cleaneds2.out2.robosess | awk '$9==200 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.PT.Status200

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/pt.logfile.2019-07-07.sorted.v2.tag.cleaneds2.out2.robosess | awk '$9==404 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.PT.Status404

cat /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/humanVSbots/pt.logfile.2019-07-07.sorted.v2.tag.cleaneds2.out2.robosess | awk '$9==503 {print}' > /data/LogAnalysis/access_pattern/temporal_analysis/after_s2_clean/robo_status_code/20190207.PT.Status503

