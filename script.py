import os
var = raw_input("Whant to create backdoor y/n: ")
if var == "y":
	os.system("sh scrip.sh")
else:
	print "try next time"
