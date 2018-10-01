#we need to know when to take shell = true and when shell = false
#if we take shell = false then sometime it will not work; the sometimes we need to know
import subprocess

cmd1="ls -lart"
sp1=subprocess.Popen(cmd1,shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
sp1.wait()
out1,err1=sp1.communicate()
print out1

cmd2=["ls -lart"]
sp2=subprocess.Popen(cmd2,shell=False,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
sp2.wait()
out2.err=sp2.communicate()
print out2()
print "=================="
print out






