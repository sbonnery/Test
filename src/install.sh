#!/bin/bash
#
# Installation
# 
set -x #echo on

#apt-get update
#apt-get upgrade
apt-get -y install hostapd udhcpd privoxy

cp etc/default/hostapd /etc/default/hostapd
cp etc/default/ifplugd /etc/default/ifplugd
cp etc/default/udhcpd /etc/default/udhcpd
cp etc/hostapd/hostapd.conf /etc/hostapd/hostapd.conf
cp etc/network/interfaces /etc/network/interfaces
cp etc/privoxy/config /etc/privoxy/config
cp etc/sysctl.conf /etc/sysctl.conf
cp etc/udhcpd.conf /etc/udhcpd.conf
cp etc/iptables.ipv4.nat /etc/iptables.ipv4.nat

update-rc.d hostapd enable
update-rc.d udhcpd enable

service udhcpd restart
service hostapd restart
service privoxy restart

