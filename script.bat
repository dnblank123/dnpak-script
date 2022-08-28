@echo off
set mode=0
set outputdir=extracted
color A
echo --------------------------------------------
echo --------------------------------------------
echo DragonNest .pak extractor script by Alin1337
echo --------------------------------------------
echo --------------------------------------------
pause
echo 0 = Extract only DNT
echo 1 = Extract only *.LUA\*.XML
echo 2 = Extract all client resources\mapdata w/o:avi,ogg,dds,mp3,wav
echo 3 = Extract all client resource\mapdata
echo 4 = Extract all ANI
SET/P mode="Enter extraction mode [default: %mode%]:"
SET/P outputdir=Enter directory name [default: %outputdir%]:

if /i %mode%==0 goto only_dnt
if /i %mode%==1 goto only_script
if /i %mode%==2 goto all_noaudiovideo
if /i %mode%==3 goto all
if /i %mode%==4 goto ani


:only_dnt
FOR %%A IN (0 1 2 3 4 5 6 7 8 9) DO quickbms.exe -Y -f "*.dnt" quickbms.txt Resource0%%A.pak %outputdir%
FOR %%B IN (10 11 12) DO quickbms.exe -Y -f "*.dnt" quickbms.txt Resource0%%B.pak %outputdir%
goto finish

:only_script
FOR %%A IN (0 1 2 3 4 5 6 7 8 9) DO quickbms.exe -Y -f "*.xml;*.lua" quickbms.txt Resource0%%A.pak %outputdir%
FOR %%B IN (10 11 12) DO quickbms.exe -Y -f "*.xml;*.lua" quickbms.txt Resource%%B.pak %outputdir%
goto finish

:all_noaudiovideo
FOR %%A IN (0 1 2 3 4 5 6 7 8 9) DO quickbms.exe -Y -f "!*.ogg;!*.avi;!*.dds;!*.mp3;!*.wav" quickbms.txt Resource0%%A.pak %outputdir%
FOR %%B IN (10 11 12) DO quickbms.exe -Y -f "!*.ogg;!*.avi;!*.dds;!*.mp3;!*.wav" quickbms.txt Resource%%B.pak %outputdir%
goto finish

:all
FOR %%A IN (0 1 2 3 4 5 6 7 8 9) DO quickbms.exe -Y quickbms.txt Resource0%%A.pak %outputdir%
FOR %%B IN (10 11 12) DO quickbms.exe -Y quickbms.txt Resource%%B.pak %outputdir%
goto finish

:ani
FOR %%A IN (0 1 2 3 4 5 6 7 8 9) DO quickbms.exe -Y -f "*.ani" quickbms.txt Resource0%%A.pak %outputdir%
FOR %%B IN (10 11 12 13 14 15 16 17 18 19) DO quickbms.exe -Y -f "*.ani" quickbms.txt Resource0%%B.pak %outputdir%
FOR %%C IN (20 21 22 23)  DO quickbms.exe -Y quickbms.txt Resource%%C.pak %outputdir%
goto finish

:finish
echo .
echo .
echo DONE! Extracted files to %outputdir%.
pause
