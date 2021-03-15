FROM ubuntu:20.04

ADD shell /home
ADD configure.sh /configure.sh
ADD home.tar.gz /home
COPY script /tmp
RUN apt update \
	&& chmod +x /tmp/bin \
	&& mv /tmp/bin/* /usr/local/bin \
	&& apt install -y bash wget screen \
	&& chmod +x /configure.sh

CMD /configure.sh
