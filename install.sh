ulimit -n 31337
ulimit -i unlimited
ulimit -e unlimited
ulimit -l unlimited
ulimit -q unlimited
ulimit -s unlimited
ulimit -u unlimited

apt-get update && apt-get -y upgrade
apt-get install -y build-essential nano
wget --no-check-certificate https://github.com/z3APA3A/3proxy/archive/3proxy-0.8.6.tar.gz
tar xzf 3proxy-0.8.6.tar.gz
cd 3proxy-3proxy-0.8.6
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://raw.githubusercontent.com/tirvo01/3p/main/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://github.com/barankilic/3proxy/raw/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
cd /etc/init.d/
wget --no-check-certificate https://raw.github.com/barankilic/3proxy/master/3proxyinit
chmod  +x /etc/init.d/3proxyinit
update-rc.d 3proxyinit defaults
sudo chmod -R 777 /etc/3proxy *
/etc/init.d/3proxyinit start

apt-get install -y g++
	apt-get install -y libssl-dev
	apt-get install -y openssl
	apt-get install -y libevent-pthreads-2.0-5
	apt-get install -y libgcrypt11
	apt-get install -y libcrypto++-dev
	apt-get install -y libcrypt-gcrypt-perl
	apt-get install -y libgcrypt11-dev
    apt-get install apache2 -y 
	apt install php7.0-mysql php7.0-curl php7.0-json php7.0-cgi php7.0 libapache2-mod-php7.0 -y 
    apt-get install php7-curl -y
	apt-get install curl libcurl3 libcurl3-dev; -y
		apt-get install -y mailutils
	apt-get install -y curl
	apt-get install -y libssh-dev
	apt-get install -y zip
	apt-get install -y unzip
	apt-get install -y telnet


echo "";
	echo "";
	echo "";
	echo "";
	echo "============================ Kit 1.0 Instalado Com Sucesso!!! ============================";