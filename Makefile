#MakeFile to build and deploy the Chat Program using ajax
# For CSC3004 Software Development

user = team4

all:  PutHTML PutCGI

PutCGI:
	chmod 777 webchat.py
	cp webchat.py /usr/lib/cgi-bin/$(user)_webchat.py

	echo "Current contents of your cgi-bin directory: "
	ls -l /usr/lib/cgi-bin/

PutHTML:
	cp assets/* /var/www/html/class/softdev/$(user)/webchat/
	cp webchat.html /var/www/html/class/softdev/$(user)/webchat/
	cp webchat.css /var/www/html/class/softdev/$(user)/webchat/
	cp webchat.js /var/www/html/class/softdev/$(user)/webchat/
	ls -l /var/www/html/class/softdev/$(user)/webchat/
clean:
	rm -f *.o  webchat
