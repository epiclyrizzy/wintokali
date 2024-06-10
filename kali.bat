@echo off
setlocal ENABLEDELAYEDEXPANSION


set "mode=windows"


set prompt=desktop@%username%:~$ 

:loop
set /p "cmd=%prompt%"
if "!cmd!"=="" goto loop

if "!cmd!"=="dev /on" goto :devon
if "!cmd!"=="dev /off" goto :devoff

if "!mode!"=="kali" (
    
    if "!cmd!"=="ls" goto :ls
    if "!cmd!"=="pwd" goto :pwd
    if "!cmd!"=="cd" goto :cd
    if "!cmd!"=="clear" goto :clear
    if "!cmd!"=="cat" goto :cat
    if "!cmd!"=="rm" goto :rm
    if "!cmd!"=="mkdir" goto :mkdir
    if "!cmd!"=="rmdir" goto :rmdir
    if "!cmd!"=="cp" goto :cp
    if "!cmd!"=="mv" goto :mv
    if "!cmd!"=="touch" goto :touch
    if "!cmd!"=="echo" goto :echo
    if "!cmd!"=="head" goto :head
    if "!cmd!"=="tail" goto :tail
    if "!cmd!"=="grep" goto :grep
    if "!cmd!"=="find" goto :find
    if "!cmd!"=="chmod" goto :chmod
    if "!cmd!"=="chown" goto :chown
    if "!cmd!"=="ln" goto :ln
    if "!cmd!"=="ps" goto :ps
    if "!cmd!"=="kill" goto :kill
    if "!cmd!"=="man" goto :man
    if "!cmd!"=="uname" goto :uname
    if "!cmd!"=="whoami" goto :whoami
    if "!cmd!"=="hostname" goto :hostname
    if "!cmd!"=="uptime" goto :uptime
    if "!cmd!"=="df" goto :df
    if "!cmd!"=="du" goto :du
    if "!cmd!"=="free" goto :free
    if "!cmd!"=="top" goto :top
    if "!cmd!"=="history" goto :history
    if "!cmd!"=="sudo" goto :sudo
    if "!cmd!"=="su" goto :su
    if "!cmd!"=="passwd" goto :passwd
    if "!cmd!"=="ifconfig" goto :ifconfig
    if "!cmd!"=="ping" goto :ping
    if "!cmd!"=="traceroute" goto :traceroute
    if "!cmd!"=="netstat" goto :netstat
    if "!cmd!"=="ss" goto :ss
    if "!cmd!"=="wget" goto :wget
    if "!cmd!"=="curl" goto :curl
    if "!cmd!"=="scp" goto :scp
    if "!cmd!"=="ftp" goto :ftp
    if "!cmd!"=="ssh" goto :ssh
    if "!cmd!"=="sftp" goto :sftp
    if "!cmd!"=="iptables" goto :iptables
    if "!cmd!"=="ip" goto :ip
    if "!cmd!"=="route" goto :route
    if "!cmd!"=="service" goto :service
    if "!cmd!"=="systemctl" goto :systemctl
    if "!cmd!"=="journalctl" goto :journalctl
    if "!cmd!"=="dmesg" goto :dmesg
    if "!cmd!"=="reboot" goto :reboot
    if "!cmd!"=="shutdown" goto :shutdown
    if "!cmd!"=="shutdown -r" goto :rshutdown
    if "!cmd!"=="hack" goto :hack
    if "!cmd!"=="creds" goto :creds
    goto :loop
) else (
    rem Default Windows Command Prompt commands
    call !cmd!
    goto :loop
)

goto loop

:hack
tree
tree
goto loop

:rshutdown
shutdown /i
goto loop

:devon
cls
color 0C
cls
chcp 65001 >nul
cls
echo ██████╗
echo ██╔══██╗
echo ██║  ██║
echo ██║  ██║
echo ██████╔╝
echo ╚═════╝
ping localhost -n 2 > nul
cls
echo ██████╗  ███████╗
echo ██╔══██╗ ██╔════╝
echo ██║  ██║ █████╗
echo ██║  ██║ ██╔══╝
echo ██████╔╝ ███████╗
echo ╚═════╝  ╚══════╝
ping localhost -n 2 > nul
cls
echo ██████╗  ███████╗ ██╗   ██╗
echo ██╔══██╗ ██╔════╝ ██║   ██║
echo ██║  ██║ █████╗   ██║   ██║
echo ██║  ██║ ██╔══╝   ╚██╗ ██╔╝
echo ██████╔╝ ███████╗  ╚████╔╝ 
echo ╚═════╝  ╚══════╝   ╚═══╝ 
ping localhost -n 2 > nul
set "mode=kali"
set prompt=root@%username%:~# 
goto loop

:devoff
cls
color 07
set "mode=windows"
set prompt=desktop@%username%:~$ 
goto loop

:ls
dir
goto loop

:pwd
cd
goto loop

:cd
set /p "path=Enter directory: "
cd !path!
goto loop

:clear
cls
goto loop

:cat
set /p "file=Enter file name: "
type !file!
goto loop

:rm
set /p "file=Enter file name: "
del !file!
goto loop

:mkdir
set /p "dir=Enter directory name: "
mkdir !dir!
goto loop

:rmdir
set /p "dir=Enter directory name: "
rmdir /s /q !dir!
goto loop

:cp
set /p "source=Enter source file: "
set /p "dest=Enter destination: "
copy !source! !dest!
goto loop

:mv
set /p "source=Enter source file: "
set /p "dest=Enter destination: "
move !source! !dest!
goto loop

:touch
set /p "file=Enter file name: "
type nul > !file!
goto loop

:creds
start https://github.com/epiclyrizzy/wintokali
goto loop

:echo
set /p "message=Enter message: "
echo !message!
goto loop

:head
set /p "file=Enter file name: "
more /e +1 !file!
goto loop

:tail
set /p "file=Enter file name: "
powershell -command "Get-Content -Path '!file!' -Tail 10"
goto loop

:grep
set /p "pattern=Enter search pattern: "
set /p "file=Enter file name: "
findstr /c:"!pattern!" !file!
goto loop

:find
set /p "pattern=Enter search pattern: "
set /p "path=Enter directory path: "
find "!pattern!" "!path!"
goto loop

:chmod
echo chmod command is not available in Windows
goto loop

:chown
echo chown command is not available in Windows
goto loop

:ln
echo ln command is not available in Windows
goto loop

:ps
tasklist
goto loop

:kill
set /p "pid=Enter process ID: "
taskkill /PID !pid!
goto loop

:man
echo man command is not available in Windows
goto loop

:uname
ver
goto loop

:whoami
whoami
goto loop

:hostname
hostname
goto loop

:uptime
systeminfo | find "System Boot Time"
goto loop

:df
wmic logicaldisk get size,freespace,caption
goto loop

:du
echo du command is not available in Windows
goto loop

:free
systeminfo | find "Available Physical Memory"
goto loop

:top
tasklist
goto loop

:history
doskey /history
goto loop

:sudo
echo sudo is not available, running command as current user
goto loop

:su
echo su command is not available in Windows
goto loop

:passwd
echo passwd command is not available in Windows
goto loop

:ifconfig
ipconfig
goto loop

:ping
set /p "host=Enter hostname or IP: "
ping !host!
goto loop

:traceroute
set /p "host=Enter hostname or IP: "
tracert !host!
goto loop

:netstat
netstat
goto loop

:ss
netstat -a
goto loop

:wget
set /p "url=Enter URL: "
powershell -command "Invoke-WebRequest -Uri !url! -OutFile $(Split-Path !url! -Leaf)"
goto loop

:curl
set /p "url=Enter URL: "
curl !url!
goto loop

:scp
echo scp command is not available in Windows
goto loop

:ftp
ftp
goto loop

:ssh
set /p "host=Enter SSH hostname: "
ssh !host!
goto loop

:sftp
set /p "host=Enter SFTP hostname: "
sftp !host!
goto loop

:iptables
echo iptables command is not available in Windows
goto loop

:ip
ipconfig
goto loop

:route
route print
goto loop

:service
echo service command is not available in Windows
goto loop

:systemctl
echo systemctl command is not available in Windows
goto loop

:journalctl
echo journalctl command is not available in Windows
goto loop

:dmesg
echo dmesg command is not available in Windows
goto loop

:reboot
shutdown /r /t 0
goto loop

:shutdown
shutdown /s /t 0
goto loop
