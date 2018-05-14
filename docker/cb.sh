#! /bin/bash
PRESENTDIR=$(pwd)
if [ ! -d /shared/slashdash ] ; then
	git clone -b "$GITBRANCH" --depth 1 "$GITURI" /shared
	if [ -d /shared/slashdash ] ; then
  		cd /shared/slashdash/
  		./autogen.sh
  		./configure --disable-zerocoin --without-gui --enable-debug
  		make
  		sudo make install
  		mkdir /home/ubuntu/.slashdash
  		cp /home/ubuntu/slashdash.conf /home/ubuntu/.slashdash/slashdash.conf
  		cd $PRESENTDIR
	else
  		echo "There was a problem with the clone"
	fi
else
	echo "/shared is not empty, should you be running pbr.sh?"	
fi
