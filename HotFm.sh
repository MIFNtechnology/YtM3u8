# usr/bin/bash
  
echo $(dirname $0)

python3 -m pip install requests

cd $(dirname $0)/scripts/

python3 HotFm_m3ugrabber.py > ../live/HotFm.m3u8

echo m3u grabbed
