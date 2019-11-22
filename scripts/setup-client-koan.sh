#!/bin/bash

zypper -n in git

git clone https://github.com/cobbler/koan.git
cd koan || (echo "Repository not correctly downloaded from Github!" && exit)
