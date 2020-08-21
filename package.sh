#!/bin/bash

if ! sudo true; then
	echo "You must have root privileges."
	exit 1
fi

cat << "EOF"

██╗      █████╗ ███████╗██╗   ██╗
██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝
██║     ███████║  ███╔╝  ╚████╔╝ 
██║     ██╔══██║ ███╔╝    ╚██╔╝  
███████╗██║  ██║███████╗   ██║   
╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   
                                                 
EOF
echo ".............................................................."
echo "Supports for Ubuntu/Mint"
echo "Author   : Soumik"
echo "Version  : v1.0"
echo ".............................................................."
echo ""
echo "Choose your preferred number bellow : "
echo "1 - To do lists after fresh installation"
echo -e "\e[31mModules - update/tweaktool/synaptic/vlc/mediacodecs/gdebi/tlp/libavcodec\e[0m"
echo "2 - Install development kit"
echo -e "\e[31mModules - lamp/phpmyadmin/mongodb/oraclejdk8/oraclejdk10/openjre\e[0m"
echo "3 - Security configuration"
echo -e "\e[31mModules - firewall/proxy/changeMac\e[0m"
echo "4 - Change Ubuntu Gnome Dock size"
echo -e "\e[31mModules - change/default\e[0m"
echo "5 - View important logs quickly"
echo -e "\e[31mModules - fulltime/last7\e[0m"
echo "6 - Encrypt your message or a file"
echo -e "\e[31mModules - message/GenPrivate/GenPublic/EncData/DecData\e[0m"
echo "7 - Network monitoring"
echo -e "\e[31mModules - bandwidth/ipScan\e[0m"
echo "8 - NC connect with IP"
echo -e "\e[31mModules - host/user\e[0m"
echo "9 - Clean your system safely"
echo "0 - Exit"

while :
do

echo -e -n "\nlazy@mainMenu:~# "
read inputmain;

case $inputmain in
	1) echo "Type the name bellow from to do list"
		echo " -> [ update/tweaktool/synaptic/vlc/mediacodecs/gdebi/tlp/libavcodec/back ] "

		echo -e -n "\nlazy@subMenu:~# "
		read input

			if [ $input == "update" ]; then
				echo -e "\e[31mBe patient, updating your system...\e[0m"
				sudo apt-get update -y
				sudo apt-get upgrade -y
				sudo apt update -y
				sudo apt upgrade -y
				sudo apt dist-upgrade -y
				echo -e "\e[31mYour system successfully updated.\e[0m"

			elif [ $input == "tweaktool" ]; then
				echo -e "\e[31mInstalling Gnome tweak tool...\e[0m"
				sudo apt install gnome-tweak-tool -y
				echo -e "\e[31mTweak successfully installed.\e[0m"

			elif [ $input == "synaptic" ]; then
				echo -e "\e[31mInstalling synaptic package manager...\e[0m"
				sudo apt-get install synaptic -y
				echo -e "\e[31mSynaptic successfully installed.\e[0m"

			elif [ $input == "vlc" ]; then
				echo -e "\e[31mInstalling vlc media player...\e[0m"
				sudo apt-get install vlc -y
				echo -e "\e[31mVLC successfully installed.\e[0m"

			elif [ $input == "mediacodecs" ]; then
				echo -e "\e[31mInstalling complete multimedia support...\e[0m"
				sudo apt install ubuntu-restricted-extras -y
				echo -e "\e[31mMedia codecs successfully installed.\e[0m"

			elif [ $input == "gdebi" ]; then
				echo -e "\e[31mInstalling gdebi package installer and manager...\e[0m"
				sudo apt install gdebi-core -y
				echo -e "\e[31mgdebi successfully installed.\e[0m"

			elif [ $input == "tlp" ]; then
				echo -e "\e[31mInstalling tlp for prolong your battery and prevent overheating...\e[0m"
				sudo apt install tlp tlp-rdw -y
				sudo tlp start
				echo -e "\e[31mTLP successfully installed and service started.\e[0m"

			elif [ $input == "libavcodec" ]; then
				echo -e "\e[31mInstalling for avoid an issue while performing media task with video editors...\e[0m"
				sudo apt install libavcodec-extra -y
				echo -e "\e[31mLibav codec successfully installed.\e[0m"

			elif [ $input == "back" ]; then
				echo "... back to main menu"

			else 
				echo "Invalid entry!! Nothing was installed!!"
			fi
		;;

	2) echo "Type the name bellow from to do list"
		echo " -> [ lamp/phpmyadmin/mongodb/oraclejdk8/oraclejdk10/openjre/back ] "

		echo -e -n "\nlazy@subMenu:~# "
		read inputNew

			if [ $inputNew == "lamp" ]; then
				echo -e "\e[31mInstalling lamp stack...\e[0m"
				sudo apt update
				sudo apt install apache2 -y
				sudo apache2ctl configtest
				echo -e "\e[31mAdjust the Firewall to Allow Web Traffic.\e[0m"
				sudo ufw app list
				sudo ufw app info "Apache Full"
				echo -e "\e[31mAllow incoming traffic for this profile.\e[0m"
				sudo ufw allow in "Apache Full"
				echo -e "\e[31mInstalling MySQL...\e[0m"
				sudo apt install mysql-server -y
				echo -e "\e[31mInstalling PHP...\e[0m"
				sudo apt install php libapache2-mod-php php-mcrypt php-mysql -y
				sudo systemctl status apache2
				echo -e "\e[31mLAMP stack successfully installed.\e[0m"

			elif [ $inputNew == "phpmyadmin" ]; then
				echo -e "\e[31mInstalling PHPMyAdmin...\e[0m"
				sudo apt-get update
				sudo apt-get install phpmyadmin php-mbstring php-gettext
				sudo phpenmod mcrypt
				sudo phpenmod mbstring
				sudo systemctl restart apache2
				echo -e "\e[31mPHPMyAdminSuccessfully installed.\e[0m"

			elif [ $inputNew == "mongodb" ]; then
				echo -e "\e[31mInstalling MongoDB...\e[0m"
				sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
				echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
				sudo apt-get update
				sudo apt-get install -y mongodb-org
				echo -e "\e[31mStarting MongoDB service...\e[0m"
				sudo service mongod start
				echo -e "\e[31mService started (Hopefully)...\e[0m"
				echo "Run 'mongo' to connect to the local server which is running on port 27017"
				echo -e "\e[31mMongoDB successfully installed.\e[0m"

			elif [ $inputNew == "oraclejdk8" ]; then
				echo "Adding repo..."
				sudo add-apt-repository ppa:webupd8team/java -y
				echo -e "\e[31mRepo added.\e[0m"
				echo "Updating repo..."
				sudo apt update -y
				echo "Updated."
				echo -e "\e[31mInstalling oracle Java8...\e[0m"
				sudo apt install -y oracle-java8-installer
				javac -version
				sudo apt install -y oracle-java8-set-default
				echo -e "\e[31mSuccessfully installed and set java8 to default.\e[0m"
				echo -e "\e[31mYou must add or set PATH/Env.Variable to work with java.\e[0m"

			elif [ $inputNew == "oraclejdk10" ]; then
				echo "Adding repo..."
				sudo add-apt-repository ppa:webupd8team/java -y
				echo -e "\e[31mRepo added.\e[0m"
				echo "Updating repo..."
				sudo apt-get update -y
				echo "Updated."
				echo -e "\e[31mInstalling oracle Java10...\e[0m"
				sudo apt install -y oracle-java10-installer
				javac -version
				sudo apt install -y oracle-java10-set-default
				echo -e "\e[31mSuccessfully installed and set java10 to default.\e[0m"
				echo -e "\e[31mYou must add or set PATH/Env.Variable to work with java.\e[0m"

			elif [ $inputNew == "openjre" ]; then
				echo -e "\e[31mInstalling JRE...\e[0m"
				sudo apt install default-jre -y
				echo -e "\e[31mSuccessfully installed.\e[0m"

			elif [ $inputNew == "back" ]; then
				echo "... back to main menu"

			else 
				echo "Invalid entry!! Nothing was installed!!"
			fi
		;;

	3) echo "Type the name bellow from to do list"
		echo " -> [ firewall/proxy/changeMac/back ] "

		echo -e -n "\nlazy@subMenu:~# "
		read inputSec

			if [ $inputSec == "firewall" ]; then
				echo -e "\e[31mConfiguring firewall...\e[0m"
				sudo ufw enable
				echo -e "\e[31mChecking present status...\e[0m"
				sudo ufw status verbose
				sudo ufw status numbered
				echo -e "\e[31mFirewall successfully activated.\e[0m"

			elif [ $inputSec == "proxy" ]; then
				echo "firefox - Must have firefox installed."
				echo "stop - To stop this script type ctrl+z."
				echo ""
				sleep 2
				echo -e "\e[31mBe patient, installing and configuring services...\e[0m"
				sudo apt-get install tor -y
				sudo apt-get install proxychains -y
				sudo service tor start
				echo -e "\e[31mSuccessfully installed.\e[0m"
				echo -e "\e[31mDownloading and replacing configuration file...\e[0m"
				cd ~ && cd Downloads
				wget -O proxychains.conf "https://drive.google.com/uc?export=download&id=17WRRyK-BDJk_vdWX3w9jWrLEqgFCxnbV" && sudo mv proxychains.conf /etc
				echo -e "\e[31mOpening firefox.\e[0m"
				proxychains firefox www.dnsleaktest.com

			elif [ $inputSec == "changeMac" ]; then
				echo -e "\e[31mList of all interfaces :\e[0m"
				sudo ifconfig
				echo ""
				echo -e "\e[31mWhat is your default network interface?\e[0m"
				read infaceD
				echo -e "\e[31mTrying to down your default network interface...\e[0m"
				sudo ifconfig $infaceD down
				echo -e "\e[31mNetwork down.\e[0m"
				sudo ifconfig $infaceD hw ether aa:bb:cc:dd:ee:ff
				echo -e "\e[31mYour temporary MAC address is ready.\e[0m"
				sudo ifconfig $infaceD up
				echo -e "\e[31mNetwork up.\e[0m"
				echo -e "\e[31mCheck your new MAC bellow.\e[0m"
				sudo ifconfig $infaceD

			elif [ $inputSec == "back" ]; then
				echo "... back to main menu"

			else 
				echo "Invalid entry!! Nothing has happened!!"
			fi
		;;

	4) echo "Type the name bellow from to do list"
		echo " -> [ change/default/back ] "

		echo -e -n "\nlazy@subMenu:~# "
		read inputDock

			if [ $inputDock == "change" ]; then
				gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
				echo -e "\e[31mSuccessfully changed.\e[0m"

			elif [ $inputDock == "default" ]; then
				gsettings set org.gnome.shell.extensions.dash-to-dock extend-height true
				echo -e "\e[31mSuccessfully changed to default.\e[0m"

			elif [ $inputDock == "back" ]; then
				echo "... back to main menu"

			else 
				echo "Invalid entry!! Nothing has happened!!"
			fi
		;;

	5) echo "fulltime - Full login and logout times and dates."
		echo "last7 - Get all files modified in last 7 days in home directory."
		echo ""
		echo "Type the name bellow from to do list"
		echo " [ fulltime/last7/back ] "

		echo -e -n "\nlazy@subMenu:~# "
		read inputLog

			if [ $inputLog == "fulltime" ]; then
				last -F
				echo -e "\e[31mShowing full login and logout times with dates.\e[0m"

			elif [ $inputLog == "last7" ]; then
				echo -e "\e[31mPlease wait, it will take some time...\e[0m"
				find . -type f -mtime -7 -exec ls -l {} \; > Last7DaysLogs.txt
				echo -e "\e[31mSuccess. Please check Last7DaysLogs.txt in your home directory.\e[0m"

			elif [ $inputLog == "back" ]; then
				echo "... back to main menu"

			else 
				echo "Invalid entry!! Nothing has happened!!"
			fi
		;;

	6) echo "Asymmetric encryption with OpenSSL and RSA for Linux and MAC."
		echo ".............................................................."
		echo "How to use :"
		echo -e " Assume you are John and you send your encrypted message to your friend,\n Your friend must have private.pem and encryptedtext.txt those files in same folder on home/lazyMsgEnc/\n By default lazyMsgEnc folder is not created on your friend's home directory\n So your friend must has to be create that folder and paste encryptedtext.txt and private.pem on lazyMsgEnc dir.\n Now when your friend run DecData he/she will get decryptedtext.txt file."
		echo ""
		echo "Step 1 : message - Create your message."
		echo "Step 2 : GenPrivate - Create private key (private.pem)."
		echo "Step 3 : GenPublic - Create public key."
		echo "Step 4 : EncData - Encrypt your message (encryptedtext.txt)."
		echo "Step 5 : DecData - Decrypt your message."
		echo ".............................................................."
		echo "Type the name bellow from to do list"
		echo " -> [ message/GenPrivate/GenPublic/EncData/DecData/back ] "

		echo -e -n "\nlazy@subMenu:~# "
		read inputMsg

			if [ $inputMsg == "message" ]; then
				cd ~ && mkdir lazyMsgEnc
				echo -e "\e[31mPlease write your message (ctrl+s to save and ctrl+x to close).\e[0m"
				sleep 2
					c="sudo apt-get install nano"
					if [ "$c" = false ]
					then
						echo -e "\e[31mNo editor found. Installing nano text editor...\e[0m"
						sudo apt-get install nano && cd ~ && cd lazyMsgEnc && sudo nano mytext.txt
					else
						cd ~ && cd lazyMsgEnc && sudo nano mytext.txt
					fi
				echo -e "\e[31mYour message is ready to encrypt. Now create private key. Type 6 and GenPrivate\e[0m"

			elif [ $inputMsg == "GenPrivate" ]; then
				x="sudo apt-get install openssl"
					if [ "$x" = false ]
					then
						echo -e "\e[31mGenerating private key...\e[0m"
						sudo apt-get install openssl && openssl genrsa -out private.pem 8196
					else
						echo -e "\e[31mGenerating private key...\e[0m"
						openssl genrsa -out private.pem 8196
					fi
				echo -e "\e[31mSuccessfully created. Now create public key. Type 6 and GenPublic\e[0m"

			elif [ $inputMsg == "GenPublic" ]; then
				echo -e "\e[31mGenerating public key...\e[0m"
				openssl rsa -in private.pem -out public.pem -outform PEM -pubout
				echo -e "\e[31mSuccessfully created. Now encrypt your file. Type 6 and EncData\e[0m"

			elif [ $inputMsg == "EncData" ]; then
				echo -e "\e[31mEncrypting your text...\e[0m"
				openssl rsautl -encrypt -inkey public.pem -pubin -in mytext.txt -out encryptedtext.txt
				echo -e "\e[31mYour message encryption success.\e[0m"

			elif [ $inputMsg == "DecData" ]; then
				xss="sudo apt-get install openssl"
					if [ "$xss" = false ]
					then
						echo -e "\e[31mDecrypting your text...\e[0m"
						sudo apt-get install openssl && openssl rsautl -decrypt -inkey private.pem -in encryptedtext.txt -out decryptedtext.txt
					else
						echo -e "\e[31mDecrypting your text...\e[0m"
						openssl rsautl -decrypt -inkey private.pem -in encryptedtext.txt -out decryptedtext.txt
					fi
				echo -e "\e[31mSuccessfully decrypted. Please check decryptedtext.txt on home/lazyMsgEnc/decryptedtext.txt\e[0m"

			elif [ $inputMsg == "back" ]; then
				echo "... back to main menu"

			else 
				echo "Invalid entry!! Nothing has happened!!"
			fi
		;;

	7) echo "Type the name bellow from to do list"
		echo " -> [ bandwidth/ipScan/back ] "

		echo -e -n "\nlazy@subMenu:~# "
		read monitr

			if [ $monitr == "bandwidth" ]; then
				echo -e "\e[31mMonitoring your network bandwidth.\e[0m"
				echo -e "\e[31mConfiguring dependencies...\e[0m"
				xdp="sudo apt install libpcap0.8 libpcap0.8-dev libncurses5 libncurses5-dev -y"
				if [ "$xdp" = false ]
				then
					sudo apt install libpcap0.8 libpcap0.8-dev libncurses5 libncurses5-dev -y
					echo -e "\e[31mInstalling utilities...\e[0m"
					sudo apt install iftop -y
					echo -e "\e[31mSuccessfully installed.\e[0m"
					echo ""
					echo -e "\e[31mList of all interfaces :\e[0m"
					sudo ifconfig
					echo ""
					echo -e "\e[31mWhat is your default network interface?\e[0m"
					read inface
					sudo iftop -P -i $inface
				else
					echo -e "\e[31mInstalling utilities...\e[0m"
					sudo apt install iftop -y
					echo -e "\e[31mSuccessfully installed.\e[0m"
					echo ""
					echo -e "\e[31mList of all interfaces :\e[0m"
					sudo ifconfig
					echo ""
					echo -e "\e[31mWhat is your default network interface?\e[0m"
					read inface
					sudo iftop -P -i $inface
				fi

			elif [ $monitr == "ipScan" ]; then
				calins="sudo apt-get install ipcalc && sudo apt-get install nmap"
					if [ "$calins" = false ]
					then
						echo -e "\e[31mInstalling utilities...\e[0m"
						sudo apt-get install ipcalc -y && sudo apt-get install nmap -y
						echo -e "\e[31mYour IP is bellow.\e[0m"
						ifconfig | grep inet
						echo ""
						echo -e "\e[31mType your IP :\e[0m"
						read ipadr
						echo ""
						echo -e "\e[31mYour IP Range is bellow.\e[0m"
						ipcalc $ipadr | grep Network
						echo ""
						echo -e "\e[31mType your IP Range :\e[0m"
						read rnge
						echo ""
						echo -e "\e[31mList of connected IP in your network :\e[0m"
						nmap -sP $rnge
					else
						echo -e "\e[31mYour IP is bellow.\e[0m"
						ifconfig | grep inet
						echo ""
						echo -e "\e[31mType your IP :\e[0m"
						read ipadr
						echo ""
						echo -e "\e[31mYour IP Range is bellow.\e[0m"
						ipcalc $ipadr | grep Network
						echo ""
						echo -e "\e[31mType your IP Range :\e[0m"
						read rnge
						echo ""
						echo -e "\e[31mList of connected IP in your network :\e[0m"
						nmap -sP $rnge
					fi

			elif [ $monitr == "back" ]; then
				echo "... back to main menu"

			else 
				echo "Invalid entry!! Nothing was installed!!"
			fi
		;;

	8) echo "host - Create connection for user to connect via terminal."
		echo "user - Connect with host using IP via terminal."
		echo ""
		echo "Type the name bellow from to do list"
		echo " -> [ host/user/back ] "

		echo -e -n "\nlazy@subMenu:~# "
		read inputAddr

			if [ $inputAddr == "host" ]; then
				ins="sudo apt-get install netcat"
					if [ "$ins" = false ]
					then
						echo -e "\e[31mInstalling utilities...\e[0m"
						sudo apt-get install netcat -y
						echo ""
						echo -e "\e[31mHost IP is bellow.\e[0m"
						ifconfig | grep inet
						echo ""
						echo -e "\e[31mSend host IP to user for connect via terminal.\e[0m"
						echo -e "\e[31mConnection is now open. User can connect with you...\e[0m"
						echo -e "\e[31mPress ctrl+z to stop connection.\e[0m"
						netcat -nvlp 3000
					else
						echo -e "\e[31mHost IP is bellow.\e[0m"
						ifconfig | grep inet
						echo ""
						echo -e "\e[31mSend host IP to user for connect via terminal.\e[0m"
						echo -e "\e[31mConnection is now open. User can connect with you...\e[0m"
						echo -e "\e[31mPress ctrl+z to stop connection.\e[0m"
						netcat -nvlp 3000
					fi

			elif [ $inputAddr == "user" ]; then
				insUsr="sudo apt-get install netcat"
					if [ "$insUsr" = false ]
					then
						echo -e "\e[31mInstalling utilities...\e[0m"
						sudo apt-get install netcat -y
						echo -e "\e[31mWhat is your host IP?\e[0m"
						read Hadr
						echo -e "\e[31mTrying to connect with host...\e[0m"
						echo -e "\e[31mPress ctrl+z to stop connection.\e[0m"
						netcat -nv $Hadr 3000
					else
						echo -e "\e[31mWhat is your host IP?\e[0m"
						read HadrN
						echo -e "\e[31mTrying to connect with host...\e[0m"
						echo -e "\e[31mPress ctrl+z to stop connection.\e[0m"
						netcat -nv $HadrN 3000
					fi

			elif [ $inputAddr == "back" ]; then
				echo "... back to main menu"

			else 
				echo "Invalid entry!! Nothing was installed!!"
			fi
		;;

	9) echo "Cleaning your system..."
			echo -e "\e[31mCleaning partial packages...\e[0m"
			sudo apt-get autoclean -y
			echo -e "\e[31mCleaning cache...\e[0m"
			sudo apt-get clean -y
			echo -e "\e[31mCleaning unused dependencies...\e[0m"
			sudo apt-get autoremove -y
			echo -e "\e[31mSuccessfully cleaned.\e[0m"
		;;

	0) echo "Successfully exited."
		exit
		;;

	*) echo -e "\e[31mInvalid entry!! Bye.\e[0m"
		exit
		;;

esac
done