%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@echo offAF_UNSPEC 
color 1f 
echo =============================
echo https://icloudportal.com 研发团队
echo =============================
title 关闭135,137,138,139,445 端口
echo. 
echo. 
echo. 
echo 正在关闭135,137,138,139端口 请稍候… 
netsh advfirewall firewall add rule name = "Disable port 135 - TCP" dir = in action = block protocol = TCP localport = 135,137,138,139
echo. 
netsh advfirewall firewall add rule name = "Disable port 135 - UDP" dir = in action = block protocol = UDP localport = 135,137,138,139
echo. 
echo 正在关闭445端口 请稍候… 
netsh advfirewall firewall add rule name = "Disable port 445 - TCP" dir = in action = block protocol = TCP localport = 445
echo. 
netsh advfirewall firewall add rule name = "Disable port 445 - UDP" dir = in action = block protocol = UDP localport = 445
echo.
echo 按任意键退出 
pause>nul
