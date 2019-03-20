#!/usr/bin/sh
/sbin/iptables -F ;
#/sbin/iptables -A INPUT -s 54.38.164.26 -p tcp -j ACCEPT ;
/sbin/iptables -A INPUT -m set --match-set YNDX src -p tcp -j ACCEPT ;
/sbin/iptables -A INPUT -m set --match-set YANDEX src -p tcp -j ACCEPT ;
/sbin/iptables -A INPUT -m set --match-set GOOGLE src -p tcp -j ACCEPT ;
/sbin/iptables -A INPUT -m set --match-set MICROSOFT src -p tcp -j ACCEPT ;
/sbin/iptables -A INPUT -m set --match-set OPERA src -p tcp -j ACCEPT ;
/sbin/iptables -A INPUT -m set --match-set OURADD src -p tcp -j ACCEPT ;
/sbin/iptables -A INPUT -p tcp --dport 80 -j REJECT --reject-with icmp-port-unreachable ;
/sbin/iptables -A INPUT -p tcp --dport 443 -j REJECT --reject-with icmp-port-unreachable ;
