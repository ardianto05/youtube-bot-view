@echo off
cls
title BOT YOUTUBE VIEWER v1 by ardianto elektronika
color a
echo off
echo=================================================================================================================
echo PETUNJUK: Pilih browser pilihan Anda sebagai default (Saya merekomendasikan Chrome karena Firefox ingin berada dalam mode aman). Kemudian lakukan semua permintaan dan pergilah!
echo=================================================================================================================
echo Pilih browser misalnya chrome.exe (ketik 'chrome.exe')
set /p b=
echo=================================================================================================================
echo Beberapa catatan video YOUTUBE? Ya (y) tidak (n)
set /p y=
if %y% == y goto mehr1
echo=================================================================================================================
echo Metode cepat tidak stabil? Ya (Y) tidak (n)!
set /P y=
if %y% == y goto fast1
echo=================================================================================================================
echo Apakah browser yang dipilih adalah browser standar? Ya [Y] Tidak [n]!
set /P n=
if %n% == n goto ende
echo================================================================================================================
echo Harap masukkan LINK YT!
set /p l=
echo=================================================================================================================
echo Harap masukkan jumlah VIEW!
set /p d=
set /A k=%d%+1
echo=================================================================================================================
echo Harap masukkan waktu tonton dalam hitungan detik! (Otomatis +5)
set /p w=
set /A r=%w%+5
echo=================================================================================================================
echo Harap tentukan waktu jeda di antara video!
set /p pz=
echo=================================================================================================================
set /A counter=1
:start
set /A t=%k%-1
echo Melintasi %counter% dari %t%
set /A counter=%counter%+1
echo=================================================================================================================
start %l%
timeout %r%
taskkill /IM %b% /F
timeout %pz%
if %counter% lss %k% ( goto :start )
:goto ende
:ende
taskkill /IM cmd.exe /F
:fast1
echo=================================================================================================================
echo Apakah browser yang dipilih adalah browser standar? Ya [Y] Tidak [n]!
set /P n=
if %n% == n goto ende
echo=================================================================================================================
echo Harap masukkan LINK YT!
set /p l=
echo=================================================================================================================
echo Harap masukkan jumlah VIEW!
set /p d=
set /A k=%d%+1
echo=================================================================================================================
echo Harap masukkan waktu tonton dalam hitungan detik! (Otomatis +10)
set /p w=
set /A r=%w%+10
echo=================================================================================================================
echo Harap tentukan waktu jeda di antara video!
set /p pz=
echo=================================================================================================================
set /A counter=1
:fast2
set /A t=%k%-1
echo Melintasi %counter% ke %t%
echo=================================================================================================================
set /A counter=%counter%+1
start %l%
timeout 5
start %l%
timeout 5
start %l%
timeout 5
start %l%
timeout %w%
taskkill /IM %b% /F
timeout %pz%
if %counter% lss %k% ( goto :fast2 )
:goto ende
:mehr1
echo=================================================================================================================
echo Apakah browser yang dipilih adalah browser standar? Ya [Y] Tidak [n]!
set /P n=
if %n% == n goto ende
echo=================================================================================================================
echo Harap masukkan LINK YT! (harus 4)
set /p l1=
set /p l2=
set /p l3=
set /p l4=
echo=================================================================================================================
echo Harap masukkan jumlah VIEW!
set /p d=
set /A k=%d%+1
echo=================================================================================================================
echo Harap masukkan waktu menonton dalam hitungan detik! (Otomatis + 20)
set /p w=
set /A r=%w%+20
echo=================================================================================================================
echo Harap tentukan waktu jeda di antara video!
set /p pz=
echo=================================================================================================================
set /A counter=1
:mehr2
set /A t=%k%-1
echo Melintasi %counter% von %t%
echo=================================================================================================================
set /A counter=%counter%+1
start %l1%
timeout 5
start %l2%
timeout 5
start %l3%
timeout 5
start %l4%
timeout %r%
taskkill /IM %b% /F
timeout %pz%
if %counter% lss %k% ( goto :mehr2 )
:goto ende
