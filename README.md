dnpak-script
============

DragonNest .pak extraction via quickbms script

This tool extracts all Resource00-25 from any dragonnest client.
It skips 0byte files (aka deleted files from updater).

It has 4 modes of extraction:
* 0 = Extract only dnt
* 1 = Extract only *.lua\*.xml
* 2 = Extract all except avi,ogg,dds,mp3,wav
* 3 = Extract all
* 4 = Extract *.ani
* 5 = Extract *.dds
* 6 = Extract *.act
* 7 = Extract *.msh
* 8 = Extract *.skn


How to use it:
- **All files goes directly into the game folder (script.bat , quickbms.txt , quickbms.exe)**
- You will need to get quickbms binary from http://aluigi.altervista.org/quickbms.htm
- Download those 3 files into (script.bat, eyedentitygames.bms and quickbms.exe) from this repo and put them in client
- Run script.bat
- .....
- Profit ?


Thank you Luigi Auriemma for wonderful game zlib extractor.
