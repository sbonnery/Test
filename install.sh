#!/bin/bash
#
# Installation
# 

#apt-get update
#apt-get upgrade
apt-get install hostapd udhcpd privoxy

cp etc/default/hostapd /etc/default/hostapd
cp etc/default/ifplugd /etc/default/ifplugd
cp etc/default/udhcpd /etc/default/udhcpd
cp etc/hostapd/hostapd.conf /etc/hostapd/hostapd.conf
cp etc/network/interfaces /etc/network/interfaces
cp etc/privoxy/config /etc/privoxy/config
cp etc/sysctl.conf /etc/sysctl.conf
cp etc/udhcpd.conf /etc/udhcpd.conf
