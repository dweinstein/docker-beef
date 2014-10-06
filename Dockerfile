FROM ubuntu:14.04
ENV SHELL /bin/bash
RUN apt-get update ; apt-get upgrade -y ; apt-get install -y build-essential openssl libreadline6 libreadline6-dev zlib1g \ 
	zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libc6-dev \
	libncurses5-dev automake libtool bison subversion ruby1.9.3 ruby-dev curl git ssh screen nano
RUN curl https://bitbucket.org/mpapis/rvm/raw/master/binscripts/rvm-installer | ${SHELL} && \ 
	/etc/profile.d/rvm.sh
RUN git clone git://github.com/beefproject/beef.git /root/beef && \
	cd /root/beef && \
	gem install bundler && \
	bundle install
ADD config.yaml /root/beef/
ENV HOME /root/beef
WORKDIR /root/beef
EXPOSE 443 2000 6789
CMD ["/bin/bash"]
