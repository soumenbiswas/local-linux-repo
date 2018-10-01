import platform,os 

def is_windows():
	os_name=platform.system()     
	if os_name=="Windows":         
		return True     
	else:         
		return False  
def main():     
	if is_windows():         
		os.system('cls')     
	else:         
		os.system('clear')    

if __name__=="__main__":     
	main()
