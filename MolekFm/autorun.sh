# usr/bin/bash
  
echo $(dirname $0)

python3 -m pip install requests

cd $(dirname $0)/scripts/

python3 MolekFm_m3ugrabber.py > https://mifntechnology.github.io/siaranMy/radio/MolekFm/live.m3u8

echo m3u grabbed
