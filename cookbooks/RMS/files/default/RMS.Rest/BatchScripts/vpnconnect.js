var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys("C:{ENTER}");
WshShell.SendKeys("cd \"C:\\Program Files {(}x86{)}\\Cisco Systems\\VPN Client\\\"{ENTER}");
WshShell.SendKeys("vpnclient.exe connect OCVPN user jgrave02 pwd jg20132014{ENTER}");
WshShell.SendKeys("Y");
WshShell.SendKeys("exit{ENTER}");
