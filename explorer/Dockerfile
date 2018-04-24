FROM ubuntu:16.04
RUN apt-get update 
RUN apt-get install -y git-core pkg-config build-essential pyqt4-dev-tools swig libqtcore4 libqt4-dev python-qt4 python-dev python-twisted python-psutil autotools-dev autoconf libtool python-pip
RUN git clone https://github.com/goatpig/BitcoinArmory.git
WORKDIR /BitcoinArmory
RUN git submodule init && git submodule update
RUN  ./autogen.sh && ./configure && make && make install
WORKDIR /
ADD omniapi /omniapi
WORKDIR /omniapi
RUN pip install -r requirements.txt
RUN mkdir /omniapi/logs/
RUN apt-get install -y nginx
COPY default /etc/nginx/sites-available/
COPY startApi.sh /omniapi
COPY config.py /omniapi/api/
RUN apt-get install -y curl postgresql-client
RUN mkdir /root/.bitcoin && mkdir /root/.omni
COPY bitcoin.conf /root/.bitcoin
COPY sql.conf /root/.omni/
EXPOSE 8080
CMD ["bash", "startApi.sh"]

