# To change this template, choose Tools | Templates
# and open the template in the editor.
import sys

import gzip
import os
import re
import zipfile

'''
python3 datacleaning_s2.py /data/LogAnalysis/access_pattern/datasets/fullday_sample/bot_identify/20120202.wayback.access.log.sorted.tag /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/20120202.wayback.access.log.sorted.tag.cleaneds2.out1 /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/20120202.wayback.access.log.sorted.tag.cleaneds2.out2

python3 datacleaning_s2.py /data/LogAnalysis/access_pattern/datasets/fullday_sample/bot_identify/pt.logfile.2019-07-07.sorted.tag /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/pt.logfile.2019-07-07.sorted.tag.cleaneds2.out1 /data/LogAnalysis/access_pattern/datasets/fullday_sample/cleaned_data_s2/pt.logfile.2019-07-07.sorted.tag.cleaneds2.out2
'''

__author__ = "yasmin"
__date__ = "$Oct 17, 2012 10:10:37 AM$"

if __name__ == "__main__":
    count = 0
    #Log file
    fh = open(sys.argv[1], 'r', encoding="latin-1")
    #Output file1: Selected fields in a log entry
    w = open(sys.argv[2], 'w')
    #Output file2: All fields in the log entry
    wr = open(sys.argv[3], 'w')

    #Sample request

    #space separation
    #100.11.67.238_0_0 - - [07/Jul/2019:23:20:45 +0100] "GET /wayback/20160519131646/http://www.jeffreyepsteinfoundation.com/ HTTP/1.1" 200 2911 "https://en.m.wikipedia.org/" "Mozilla/5.0 (iPad; CPU OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1"   00000100
    #   0              1 2        3                4      5                        6                                            7        8   9                 10                    11
 
    #tab separation
    #100.11.67.238_0_0 - - [07/J......   00000100
    #   0                                    1
 
    for line in fh:  
        try:
            count = count + 1;
            if count % 10000 == 0:
               print(count)
            # print(line)
            list = line.split(' ');
            list2 = line.split('\t');
            tag = list2[1]

            #Ignore incomplete logs
            if len(list) <12:
                continue;
            ip = list[0]

            #Ignore incomplete datetime
            if len(list[3]) < 2:
                continue;
            logtime = list[3][1:];
            #print(logtime)

            #Only the GET & HEAD method================
            uri = ""
            if list[5].endswith("GET"):
                uri = list[6];
            else:
                continue;

            #Ignore the embedded resources
            if uri.endswith(".js") or uri.endswith(".png") or uri.endswith(".css") or uri.endswith(".jpg") or uri.endswith(".gif") or uri.endswith(".ico") \
            or uri.endswith(".jpeg") or uri.endswith(".tif") or uri.endswith(".tiff") \
            or uri.endswith(".gif") or uri.endswith(".ico") or uri.endswith(".svg") \
            or uri.endswith(".swf") or uri.find(".swf")>-1:
                continue;

            # #20101122150451cs_
            # if uri.startswith("http://liveweb") or uri.startswith("http://static"):
            #     continue;

            # if uri.find("web/jsp/")>0:
            #     continue;

            dateExpression = re.compile( r"\d\d\d\d\d\d\d\d\d\d\d\d\d\d(js_|cs_|fw_)" )
            result = dateExpression.search( uri )
            #print(result)        
            if result:
                continue

            #print(list[8])
            try:
                status = int(list[8])
            except ValueError as e:
                continue

            #Removing requests other than status 200,404, and 503
            if status not in {200,404,503}:
                continue    

            #Referrer field
            ref = list[10][1:len(list[10])-1];
            #if  ref == "\"-\"":
            #    continue

            agent = list[11][1:]
            agent = agent.lower()

            #print agent
            #if agent.startswith("mozilla") or agent.startswith("firefox") or agent.startswith("opera") or agent.startswith("microsoft")  or agent.startswith("safari") or agent.startswith("chrome")  :
            
            w.write(ip + "\t" + logtime + "\t" + uri + "\t" + tag + "\n");
            w.flush();
            wr.write(line);
        except Exception as e:
            pass

    w.close()
    wr.close()
    print("Cleaned:"+str(count))
