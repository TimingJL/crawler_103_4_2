import urllib2
import sys,time
import sys
sys.path.append("../")
import jieba
jieba.initialize()


i=1
print i
while i > 0:
 	print i	
	filename = "a.txt"
	print filename
	content = open(filename,"r").read()
	t1 = time.time()
	words = list(jieba.cut(content))

	t2 = time.time()
	tm_cost = t2-t1
	log_f = open(filename+".txt","w")
	
	for j in words:
		if j != " ":
	 	 	log_f.write(j.encode('utf-8'))
	 	 	log_f.write("\n")
	log_f.close()
	i -= 1


print 'cost',tm_cost
print 'speed' , len(content)/tm_cost, " bytes/second"

