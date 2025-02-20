#!/bin/bash
source /home/unreal/config
## Install UnrealIRCD
wget --no-check-certificate https://www.unrealircd.com/downloads/Unreal$UNREAL_VERSION.tar.gz
tar -zxvf Unreal$UNREAL_VERSION.tar.gz
cd Unreal$UNREAL_VERSION
./Config
make
cp /home/unreal/unreal.conf /home/unreal/Unreal$UNREAL_VERSION/unrealircd.conf
echo $MOTD > ircd.motd
echo $RULES > ircd.rules
