import sys, os, re
#import zipfile
import gzip
import datetime
__author__="yasmin"
__date__ ="$Nov. 8, 2012 11:58:37 AM$"

#Converted to python3 By
#__author__="himarsha"
#__date__ ="$Oct. 26, 2021 10:17:15 AM$"

#To sessionize whole day - By
#__author__="himarsha"
#__date__ ="$Nov. 27, 2021 10:17:15 AM$"


def calculate_sessions(last_ip,ipDict):    
    robot= 0
    ipAdd = last_ip
    #print(last_ip)    
    agCount = len(ipDict.keys())
    if agCount >19:
        robot= 1
    #print("IP", last_ip)
    #print("Robot", robot)
    #print(ipDict.keys())
    for idx, ag  in enumerate(ipDict):        
        userSession = 0
        #print(idx,ag)
        for idv, item in enumerate(ipDict[ag]):
            #print(idv,item)
            if robot==1:
                newitem = item.replace(ipAdd,"x"+ipAdd)
            else:
                try:
                    list = item.split(' ')
                    if len(list)<12:
                        w1.write(item)
                        continue
                        
                    if idv == 0:
                        oldtt = datetime.datetime.strptime( list[3][-8:],"%H:%M:%S")
                    tt =datetime.datetime.strptime( list[3][-8:],"%H:%M:%S")
                    if tt> oldtt:
                        tdelta = tt -oldtt
                    else:
                        tdelta = oldtt-tt

                    if tdelta.seconds > 600:
            #            print ipAdd+str(idx)+"\t"+str(tdelta.seconds)
             #           print str(tt) +"\t"+ str(oldtt)
                        userSession = userSession+1
                        
                    oldtt = tt

                    # if robot==1:
                    #     newitem = item.replace(ipAdd,ipAdd+"_"+'x'+str(idx)+"_"+str(userSession));
                    # else:
                    newitem = item.replace(ipAdd,ipAdd+"_"+str(idx)+"_"+str(userSession))
        #                if robot==0:
        #                      print newitem
                except:
                    w1.write(item)
                    continue
            newitem = newitem.encode('utf_8')
            w.write(newitem)
    #print("\n")


if __name__ == "__main__":
    with gzip.open(sys.argv[1],'r') as fh: 
        w = gzip.open(sys.argv[2],'w') 
        w1 = gzip.open(sys.argv[3],'w')
        last_line = int(sys.argv[4])
        ipDict = {}
        last_ip = 0
        count = 1
        for line in fh: 
            try:
                line = line.decode("utf-8") 
                list = line.split(' ');

                this_ip = list[0]
                this_ip = this_ip.strip()
                
                if len(list[3])<2:
                    continue;

                agent = "";
                for i in range(11, len(list)):
                    agent = agent +" "+list[i]
                agent = agent[2:-2].lower()

                if last_ip == this_ip:
                    is_newIP = False
                else:
                    is_newIP = True

                if not is_newIP:
                    #Not a new IP - same session
                    #save things in dictionairy (adding)
                    if agent not in ipDict.keys():
                        ipDict[agent] = [line]
                    else:
                        ipdipaua = ipDict[agent]
                        ipdipaua.append(line)


                if is_newIP:  
                    #New ip - new session         
                    #check if there is a dict then process the dictionairy           
                    if ipDict:
                        #dictionary is NOT empty
                        #process the dictionary - calculate sessions    
                        calculate_sessions(last_ip,ipDict)
                        #then create new dictionairy(initialize+plus that line)  
                        ipDict = {}
                        ipDict[agent] = [line]
                    else:
                        #dictionary is empty
                        #first run
                        ipDict[agent] = [line]

                if count == last_line:
                    #End of file  
                    calculate_sessions(last_ip,ipDict)  
                last_ip = this_ip 
            except:
                pass                
            print(count)
            count = count + 1 
        w.close() 