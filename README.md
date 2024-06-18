[![M3U generator](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/m3u_Generator.yml/badge.svg)](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/m3u_Generator.yml)

# YtM3u8

* **Dari Youtube Live Ke M3u8 IPTV**.
* **Tidak semua link youtube boleh digunakan.**
* **Kemaskini automatik setiap setiap 3jam**.
* **Link secara berkumpulan dan berasingan**.

## CARA GUNA BERKUMPULAN

* **Isi nama siaran | nama kumpulan | link logo | tv id.yt**
`https://www.youtube.com/watch?v=(isi youtube id)`
* **Ikut contoh seperti dibawah,**

`channel_info.txt`
```text
~~ DO NOT EDIT THE FIRST 2 LINES
~~ FORMAT: <channel name> | <group name> | <logo> | <tvg-id>

spongebob | kids | https://(logo.png) | Nickelodeon.yt
https://www.youtube.com/watch?v=XtLxIfii-B4
phineas&ferb | kids | https://(logo.png) | DisneyXd.yt
https://www.youtube.com/watch?v=Fjp2TdlTTIU
```

* **Link akan dikemaskini secara automatik**
* **Atau untuk permulaan,boleh klik `M3U generator` diatas dan klik `Run Worflow`**
* **Link akan dikemaskini disini,**

`live.m3u8`
```link
https://raw.githubusercontent.com/MIFNtechnology/YtM3u8/github-private/live.m3u8
```
* **link m3u8 ini telah terisi,boleh digunakan terus di iptv player.**

## PERHATIAN!!

* **Tidak semua link youtube dapat digunakan disini.**
* **Tidak perlu di ISU kan jika link m3u8 tersebut tidak dapat digunakan.Cuma cuba link youtube yang lain.**
* **Link youtube mesti diawali dgn** `https:// www.youtube.com/watch?v=` **diikuti dengan id.**

# LINK UNTUK mifn/myIPtv @siaranMy. BOLEH DIISI DALAM SENARAI (PLAYLIST) M3U8 SECARA BERASINGAN.

| siaranMy/myIPtv |
|--|
* BERNAMA TV [![BERNAMA generator](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/bernama_Generator.yml/badge.svg)](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/bernama_Generator.yml)|
```
https://raw.githubusercontent.com/MIFNtechnology/YtM3u8/github-private/bernama/live.m3u8
```
* HOT FM [![HotFm generator](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/HotFm_Generator.yml/badge.svg)](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/HotFm_Generator.yml)
```
https://raw.githubusercontent.com/MIFNtechnology/YtM3u8/github-private/HotFm/live.m3u8
```
* KOOL 101 [![Kool101 generator](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/Kool101_Generator.yml/badge.svg)](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/Kool101_Generator.yml)
```
https://raw.githubusercontent.com/MIFNtechnology/YtM3u8/github-private/Kool101/live.m3u8
```
* SURIA FM [![SuriaFm generator](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/SuriaFm_Generator.yml/badge.svg)](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/SuriaFm_Generator.yml)
```
https://raw.githubusercontent.com/MIFNtechnology/YtM3u8/github-private/SuriaFm/live.m3u8
```
* 8FM [![8Fm generator](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/8Fm_Generator.yml/badge.svg)](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/8Fm_Generator.yml)
```
https://raw.githubusercontent.com/MIFNtechnology/YtM3u8/github-private/8Fm/live.m3u8
```
* MOLEK FM [![MolekFm generator](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/MolekFm_Generator.yml/badge.svg)](https://github.com/MIFNtechnology/YtM3u8/actions/workflows/MolekFm_Generator.yml)
```
https://raw.githubusercontent.com/MIFNtechnology/YtM3u8/github-private/MolekFm/live.m3u8
```

## CARA GUNA BERASINGAN

* Buat 'folder' untuk link anda cth:(/your_folder/)
* Isi autoran.sh & autoran.bat

(/your_folder/autoran.sh) tukar nama `(your_folder)_m3ugrabber.py`.
```
# usr/bin/bash
  
echo $(dirname $0)

python3 -m pip install requests

cd $(dirname $0)/scripts/

python3 your_folder_m3ugrabber.py > ../live.m3u8

echo m3u grabbed
```

(/your_folder/autorun.bat) tukar nama `(your_folder)_m3ugrabber.py`.
```
pip install requests

cd scripts/
python your_folder_m3ugrabber.py > ../live.m3u8
```
* Tambah folder info cth:(/your_folder/info/)
* Isi info.txt

(/your_folder/info/folder_info.txt) tukar nama`folder_info.txt` NamaSiaran,NamaKumpulan & video id anda watch?v=`XtLxIfii-B4`
```
~~ DO NOT EDIT THE FIRST 2 LINES
~~ FORMAT: <channel name> | <group name> | <logo> | <tvg-id>

NamaSiaran | NamaKumpulan |  | 
https://www.youtube.com/watch?v=XtLxIfii-B4
```

* Tambah folder scripts cth:(/your_folder/scripts/)
* Isi your_folder_m3ugrabber.py

(/your_folder/scripts/your_folder_m3ugrabber.py) tukar nama `(your_folder)`_m3ugrabber.py & tukar nama `(your_folder)`_info.txt
with open('../info/`your_folder_info.txt'`) as f:
```
#! /usr/bin/python3

import requests
import os
import sys

windows = False
if 'win' in sys.platform:
    windows = True

def grab(url):
    response = s.get(url, timeout=15).text
    if '.m3u8' not in response:
        response = requests.get(url).text
        if '.m3u8' not in response:
            if windows:
                print('https://raw.githubusercontent.com/MIFNtechnology/YtM3u8/github-private/assets/info.m3u8')
                return
            #os.system(f'wget {url} -O temp.txt')
            os.system(f'curl "{url}" > temp.txt')
            response = ''.join(open('temp.txt').readlines())
            if '.m3u8' not in response:
                print('https://raw.githubusercontent.com/MIFNtechnology/YtM3u8/github-private/assets/info.m3u8')
                return
    end = response.find('.m3u8') + 5
    tuner = 100
    while True:
        if 'https://' in response[end-tuner : end]:
            link = response[end-tuner : end]
            start = link.find('https://')
            end = link.find('.m3u8') + 5
            break
        else:
            tuner += 5
    streams = s.get(link[start:end]).text.split('#EXT')
    hd = streams[-1].strip()
    st = hd.find('http')
    print(hd[st:].strip())
    #print(f"{link[start : end]}")

print('#EXTM3U')
print('#EXT-X-VERSION:3')
print('#EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2560000')
s = requests.Session()
with open('../info/bernama_info.txt') as f:
    for line in f:
        line = line.strip()
        if not line or line.startswith('~~'):
            continue
        if not line.startswith('https:'):
            line = line.split('|')
            ch_name = line[0].strip()
            grp_title = line[1].strip().title()
            tvg_logo = line[2].strip()
            tvg_id = line[3].strip()
        else:
            grab(line)

if 'temp.txt' in os.listdir():
    os.system('rm temp.txt')
    os.system('rm watch*')
```

* Pergi ke `ACTION` buat workflows file sendiri.

(.github/workflows/`your_folder`_Generator.yml) Tukar nama `your_folder`

name: `your_folder` generator

chmod +x `your_folder`/autorun.sh & 
./`your_folder`/autorun.sh
          
```
# This is a basic workflow to help you get started with Actions

name: your_folder generator

# Controls when the action will run. 
on:
  schedule:
    - cron: '0 0/5 * * *'

  pull_request:
    branches:
      - github-private

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v4

      # Runs a single command using the runners shell
      #- name: Run a one-line script
      #  run: echo testing!

      # Runs a set of commands using the runners shell 
      - name: config
        run: |
          git config --global user.email "action@github.com"
          git config --global user.name "GitHub Action"

      - name: .github-private
        run: |
          pwd
          chmod +x your_folder/autorun.sh
          ./your_folder/autorun.sh

      - name: git add
        run: |
          git add -A
          ls -la

      - name: commit & push
        run: |
          git commit -m "links are updated"
          git push
```

* **Link akan dikemaskini secara automatik**
* **Atau untuk permulaan,boleh klik `your_folder generator` diatas dan klik `Run Worflow`**
* Pergi ACTION & pilih `your_folder generator` klik `Run Worflow`.
* File m3u8 akan automatik disini (/your_folder/live.m3u8)
* Guna raw file untuk isi disenarai (playlist) m3u8.

