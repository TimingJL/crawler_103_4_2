import urllib2
import sys,time
import sys
sys.path.append("../")
import jieba
jieba.initialize()


i=10
while i>1:
	filename = str(i)
url = filename
content = open(filename,"rb").read()
t1 = time.time()
words = list(jieba.cut(content))

t2 = time.time()
tm_cost = t2-t1

log_f = open(filename+".log","wb")
log_f.write(words.encode('utf-8'))
log_f.close()
i -= 1
print 'cost',tm_cost
print 'speed' , len(content)/tm_cost, " bytes/second"

