FROM kkost/uwsgi-docker
MAINTAINER kkost

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]

# Just add Flask!
RUN pip install flask
ADD webapp.py /home/app/webapp.py

# Enable uWSGI and nginx
RUN rm -f /etc/service/uwsgi/down /etc/service/nginx/down
