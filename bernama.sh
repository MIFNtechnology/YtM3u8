# usr/bin/bash
  
echo $(dirname $0)

python3 -m pip install requests

cd $(dirname $0)/scripts/

python3 bernama_m3ugrabber.py > ../BernamaTv.m3u8

echo m3u grabbed
