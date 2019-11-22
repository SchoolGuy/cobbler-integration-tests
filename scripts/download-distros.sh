#!/bin/bash

# Options parser

current_dir=$PWD
cd "$1" || (echo "Could not change to folder! Exiting" && exit)

# Debian
# Source: https://www.debian.org/CD/http-ftp/#stable

wget https://cdimage.debian.org/debian-cd/current/amd64/iso-dvd/debian-10.2.0-amd64-DVD-1.iso

# FreeBSD
# Source: https://www.freebsd.org/where.html

wget https://download.freebsd.org/ftp/releases/amd64/amd64/ISO-IMAGES/12.1/FreeBSD-12.1-RELEASE-amd64-dvd1.iso

# Redhat: CentOS
# Sorce: https://www.centos.org/download/
wget http://ftp.rz.uni-frankfurt.de/pub/mirrors/centos/6.10/isos/x86_64/CentOS-6.10-x86_64-bin-DVD1.iso
wget http://ftp.rz.uni-frankfurt.de/pub/mirrors/centos/7.7.1908/isos/x86_64/CentOS-7-x86_64-DVD-1908.iso
wget http://ftp.rz.uni-frankfurt.de/pub/mirrors/centos/8.0.1905/isos/x86_64/CentOS-8-x86_64-1905-dvd1.iso

# Redhat: Fedora
# Source: https://getfedora.org/de/server/download/
wget https://download.fedoraproject.org/pub/fedora/linux/releases/31/Server/x86_64/iso/Fedora-Server-dvd-x86_64-31-1.9.iso

# SUSE: openSUSE
# Source Leap: https://software.opensuse.org/distributions/leap?locale=de
# Source Tumbleweed: https://software.opensuse.org/distributions/tumbleweed
wget https://download.opensuse.org/distribution/leap/15.1/iso/openSUSE-Leap-15.1-DVD-x86_64.iso
wget https://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-DVD-x86_64-Current.iso

# Canonical: Ubuntu
# Source: https://ubuntu.com/download/server
wget http://releases.ubuntu.com/18.04.3/ubuntu-18.04.3-live-server-amd64.iso
wget http://releases.ubuntu.com/19.10/ubuntu-19.10-live-server-amd64.iso

# Cleanup
cd "$current_dir" || (echo "Could not change back to original folder" && exit)
