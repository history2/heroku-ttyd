FROM ubuntu:20.04

ADD shell /home
ADD configure.sh /configure.sh
ADD home.tar.gz /home
RUN 
COPY script /tmp
RUN apt update \
	&& chmod +x /tmp/bin \
	&& chmod 777 /run/screen \
	&& mv /tmp/bin/* /usr/bin \
	&& apt install -y bash wget screen \
	&& chmod +x /configure.sh \
	&& chmod +x /usr/bin/ttyd /usr/bin/aria2c /usr/bin/rclone /usr/bin/frpc
ENV LANG C.UTF-8
WORKDIR /home
CMD /configure.sh
