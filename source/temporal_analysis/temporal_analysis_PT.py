#!/usr/bin/env python3
                 
import sys
import re

requests = open(sys.argv[1], 'r', encoding = "utf-8")
out =  open(sys.argv[2], 'w')
other = open(sys.argv[3], 'w')


if __name__ == "__main__":
	#reg = re.compile("^.*/\web/\d{14}")
	for each in requests:
		try:
			req = each.split(" ")[6]
			result = re.findall( '/\wayback/\d{1,14}', req)
			if not result:
				result = re.findall( '\/no[fF]rame\/replay\/\d{1,14}', req)
			#print(result)
			matches = len(result)
			#print(matches)
			if matches == 1:
				match = result[0]
			elif matches > 1:		
				other.write(req+"\n")		
				match = result[0]
			else:
				match = None
				#print("NONE")
				pass
			if match:
				#print(match)	
				out.write(match+"\n") 
		except Exception as e:
			print(e)
			pass

requests.close()
other.close()

                 
# import sys
# import re
# import gzip

# requests = open(sys.argv[1], 'r')
# out =  open(sys.argv[2], 'w')
# other = open(sys.argv[3], 'w')


# if __name__ == "__main__":
# 	#reg = re.compile("^.*/\web/\d{14}")
# 	for each in requests:
# 		try:
# 			each = each.decode("utf-8") 
# 			req = each.split(" ")[6]
# 			result = re.findall( '/\web/\d{14}', req)
# 			matches = len(result)
# 			if matches == 1:
# 				match = result[0]
# 			elif matches > 1:		
# 				other.write(req+"\n")		
# 				match = result[0]
# 			else:
# 				match = None
# 				pass
# 			if match:
# 				match = match
# 				out.write(match+"\n") 
# 		except Exception as e:
# 			print(e)
# 			pass

# requests.close()
# out.close()
# other.close()



# if __name__ == "__main__":
# 	#reg = re.compile("^.*/\web/\d{14}")
# 	for each in requests:
# 		req = each.split(" ")[6]
# 		#print(req)
# 		result = re.findall( '/\wayback/\d{14}', req)
# 		#print(result)
# 		matches = len(result)
# 		if matches == 1:
# 			match = result[0]
# 		elif matches > 1:		
# 			other.write(req+"\n")		
# 			match = result[0]
# 		else:
# 			#print(matches)
# 			match = None
# 			pass
# 		if match:
# 			out.write(match+"\n") 