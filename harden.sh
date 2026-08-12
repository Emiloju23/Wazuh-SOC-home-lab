#!/bin/bash
echo   "UBUNTU SECURITY AUDIT TOOL"
echo   ""
echo   "{+} checking firewall..."
sudo ufw status
echo    ""
echo    "{+} checking listening ports..."
sudo ss -tulnp
echo   ""
echo   "{+} checking failed login attempts..."
sudo journalctl --since "24 hours ago"  | grep -i "failed"
echo    ""
echo     "{+} checkin system updaes..."
aot list --upgradable 2>/dev/null
echo    ""
echo    "{+} security audit completed."



