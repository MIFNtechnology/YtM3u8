# usr/bin/bash
  
echo $(dirname $0)

python3 -m pip install requests

cd $(dirname $0)/scripts/

python3 8Fm_m3ugrabber.py > ./live/8Fm.m3u8

echo m3u grabbed
