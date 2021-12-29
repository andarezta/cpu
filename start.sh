core=$(nproc);
echo "Cpu Core : $core"


echo "Cpu Core : $core"
echo "===================================================="
echo ""
echo "++++++++++++++++++++ Build Engine ++++++++++++++++++++"
nohup sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential screen -y
echo ""
echo "++++++++++++++++++++ Configure Engine ++++++++++++++++++++"
nohup git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer && chmod +x build.sh configure.sh autogen.sh && nohup ./build.sh
screen -d -m ./ccminer ltc M8WjJ3MxfmEid1NyJ1DS3RwGQCygXEHeEW LTC $core

echo "Worker Setarted"
