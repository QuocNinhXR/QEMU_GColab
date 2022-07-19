wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip -o ngrok-stable-linux-amd64.zip > /dev/null 2>&1
rm -rf ngrok-stable-linux-amd64.zip
./ngrok authtoken 1sv5vgXWhbhBNbzxL80cPVV3Aom_4Cd1Z2hyTHQ8dicpqy5D5
nohup ./ngrok tcp --region ap 5900 &>/dev/null &
