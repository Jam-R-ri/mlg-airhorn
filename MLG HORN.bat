@echo off
cd %temp%
curl https://cdn.discordapp.com/attachments/951496409318817872/967838883058417694/mlghorn.mp3 -O
set "file=mlghorn.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
cscript.exe //nologo sound.vbs
del mlghorn.mp3
del Sound.vbs