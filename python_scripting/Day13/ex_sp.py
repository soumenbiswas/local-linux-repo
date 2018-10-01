import subprocess,os,time
cmd="ls -lart"

#os.system(cmd)

sp=subprocess.Popen(cmd,shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
sp.wait()
out,err=sp.communicate()

print out
print "-----------"
print err

for each in out.split("\n"):
	print each
	time.sleep(2)
