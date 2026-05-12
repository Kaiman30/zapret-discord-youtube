@echo off
chcp 65001 > nul
cd /d "%~dp0"
set "BIN=%~dp0bin\"
set "LISTS=%~dp0lists\"
cd /d %BIN%

start "zapret: Minecraft" /min "%BIN%winws.exe" ^
--wf-tcp=25565 ^
--filter-tcp=25565 --hostlist="%LISTS%list-minecraft-eu.txt" --dpi-desync-any-protocol=1 --dpi-desync-cutoff=n5 --dpi-desync=multisplit --dpi-desync-split-seqovl=582 --dpi-desync-split-pos=1 --dpi-desync-repeats=4 --dpi-desync-split-seqovl-pattern="%BIN%tls_clienthello_4pda_to.bin" --dpi-desync-fake-tls="%BIN%tls_clienthello_www_google_com.bin" --new ^
--filter-tcp=25565 --hostlist="%LISTS%list-minecraft-ru.txt" --dpi-desync=none --new ^
--filter-tcp=25565 --dpi-desync-any-protocol=1 --dpi-desync-cutoff=n4 --dpi-desync=fake --dpi-desync-repeats=2 --dpi-desync-fooling=badseq --dpi-desync-fake-tls="%BIN%tls_clienthello_www_google_com.bin" --new ^
--filter-udp=25565 --dpi-desync=none