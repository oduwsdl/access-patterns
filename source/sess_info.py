'''
0.32.5.177_0_0 - - [02/Feb/2012:06:50:26 +0000] "GET http://wayback.archive.org/web/*/http://SMARTTOWN.RU/ HTTP/1.1" 404 2163 "-" "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)"
'''
import sys, re, math
import shlex
from collections import defaultdict
from datetime import datetime
import statistics
from urllib.parse import urlparse 
import gzip

def get_time(t):
	return datetime.strptime( t,"%H:%M:%S")#.astimezone(tz=datetime.timezone.utc)

def get_inter_request_time(t_list):
	l1 = []
	for i in range(1, len(t_list)):
		rt = (t_list[i] - t_list[i-1] ).total_seconds()
		l1.append(rt)
	return l1

def round(x):
	return math.ceil(x * 100000.0) / 100000.0
	

def calculate_session_info(last_sess,sessDict):
	#print(sessDict)
	for sess, logs in sessDict.items():			
		allreq = len(logs)
		reql = []
		sd = "-"
		srt = "-"
		std = "-"
		BS = "-"
		em_count = 0
		html_count = 0
		im_count = 0
		ref_count = 0
		im_ref = 0 
		em_ref = 0
		t_list = []

		for i in logs:
			try:
				t_list.append(get_time(i.split()[3][-8:]))
				try:
					log = shlex.split(i)
					ref = log[8]
					m,req,v = log[5].split()
				except:
					ref = i.split()[10]
					req = i.split()[6]
				reql.append(req)
				im = 0  #change in image_count or em_count
				em = 0
				hm = 0		 	
				# else:	
					#if m=="GET":
				p = urlparse(req).path            ##ParseResult(scheme='http', netloc='wayback.archive.org', path='/web/*/http://SMARTTOWN.RU/', params='', query='', fragment='')
				k = urim.findall(p) 
				if k:
					rflag = k[0][3]
					if rflag == "im_":
						im_count += 1
						im = 1
					if rflag in ['js_','cs_','fw_']:    ##Analyse different r_flags
						em_count += 1
						em = 1
				#else:
				if not im and not em:  #if coldnt find im or em through r_flag, then check extension
					ext = p.split('.')[-1].strip().lower()			
					if ext in ['png','jpg','gif','jpeg','bmp','svg']:
						im_count += 1
						im = 1
					if ext in  ['js','jsp','css','ico','swf','txt']:
						em_count += 1
						em = 1


				if not im and not em: #if it is not embedded resource then its a html
					html_count += 1     
					hm = 1

				if ref != '-':	##Analyse null refferals
					ref_count += 1
					if im == 1:
						im_ref += 1
					if em == 1:
						em_ref += 1
				# if hm:
				# 	fhm.write(i+'\n')
			except Exception as e:
				print(e)
				continue

	        #--------------------------------------#

		IHR = "-"
		IH = "-"
		IA = "-"
		RA = "-"

		uniq_req = len(set(reql))
		ur = uniq_req/allreq
		t_list = sorted(t_list)

		if html_count != 0:
			IH = round(im_ref/html_count)

		if allreq != 0:
			IA = round(im_count/allreq)
			RA = round(ref_count/allreq)


		if html_count > 1:
			sd = (t_list[-1] - t_list[0]).total_seconds()
			sd = sd+1 #to avoid session with 0 sec session duration.
			rt = get_inter_request_time(t_list)
			srt = statistics.mean(rt)
			try:
				std = statistics.stdev(rt)
			except statistics.StatisticsError as e:
				std = "-"
			#try:	
			BS = html_count/sd
			BS = round(BS)

		# 	except ZeroDivisionError as e:
		# 		BS="$" #ZeroDivisionError: float division by zero {sd is 0}
		towrite = f"{sess}\t{allreq}\t{html_count}\t{im_count}\t{IH}\t{BS}\t{sd}\t{srt}\t{std}\t{ref_count}\t{em_count}\t{IA}\t{RA}\t{im_ref}\t{em_ref}\t{ur}\n"
		towrite = towrite.encode('utf_8')
		f1.write(towrite)




if __name__ == "__main__":
	f1 = gzip.open(sys.argv[2],"w")
	last_line = int(sys.argv[3])
	reqline = f"I\tallreq\thtml_count\tim_count\tIH\tBS\tsd\tsrt\tstd\tref_count\tem_count\tIA\tRA\tim_ref\tem_ref\tur\n"
	reqline = reqline.encode('utf_8')
	f1.write(reqline)
	#dic
	urim = re.compile(r'^(?P<prefix>[\w\-\/]*?\/)(?P<mtime>\d{14})((?P<rflag>[a-z]{2}_))?\/(?P<urir>\S+)$')
	last_sess = 0
	count = 1
	sessDict = defaultdict(list)
	with gzip.open(sys.argv[1],'r') as f:
		for line in f: 
			try:
				line = line.decode('utf_8')
				line = line.strip('\n')
				this_sess = line.split()[0] #I= ip_agent_session
				# if len(list[3])<2:
				# 	continue;

				# agent = "";
				# for i in range(11, len(list)):
				# 	agent = agent +" "+list[i]
				# 	agent = agent[2:-2].lower()
				#print(last_sess,this_sess)
				if last_sess == this_sess:
					is_newSess = False
				else:
					is_newSess = True
				#print(is_newSess)
				if not is_newSess:
					#Not a new Session - same session
					#save things in dictionairy (adding)
					#print("Same sess. adding..")
					sessDict[this_sess].append(line)

				if is_newSess:  
				#New session         
				#check if there is a dict then process the dictionairy           
					if sessDict[this_sess]:
						#print("End of sess.. calculating sess info")
						#dictionary is NOT empty
						#process the dictionary - calculate sessions   
						calculate_session_info(last_sess,sessDict)
						#break
						#then create new dictionairy(initialize+plus that line)  
						sessDict = defaultdict(list)
						sessDict[this_sess].append(line)
					else:
						#dictionary is empty
						#first run  
						#print("Here at first run")
						sessDict[this_sess].append(line)
				#print(last_line,count)
				if count == last_line:
					#End of file  
					#print("End of file, calculating sess info and end")
					calculate_session_info(last_sess,sessDict) 
					#break 
				last_sess = this_sess             
			except Exception as e:
				print(e)
				pass   
			print(count)
			count = count + 1 
			#break
	f1.close()