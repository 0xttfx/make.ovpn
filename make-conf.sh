#!/bin/bash
# author: Faioli - https://github.com/0xttfx
# version: 0.1
# license: SPDX short identifier: BSD-3-Clause
###
# The script will print in STDOUT the base.conf file, 
# the standard VPN client configuration file, and concatenate
# at the end the CA file of the certificate authority, and 
# successively the client's key and certificate and the TLS 
# key "ta" redirecting to a only file named <name.ovpn> 
# in ~/client-configs/files directory
###########################################################

# First and only argument: the CN of the VPN user/client

  #
  #  $./make_config.sh jao
  #

K_DIR=~/client-configs/keys
OUT_DIR=~/client-configs/files
CONF=~/client-configs/base.conf

cat ${CONF} \
        <(echo -e '<ca>') \
        ${K_DIR}/ca.crt \
        <(echo -e '</ca>\n<cert>') \
        ${K_DIR}/${1}.crt \
        <(echo -e '</cert>\n<key>') \
        ${K_DIR}/${1}.key \
        <(echo -e '</key>\n<tls-crypt>') \
        ${KY_DIR}/ta.key \
        <(echo -e '</tls-crypt>') \
        > ${OUT_DIR}/${1}.ovpn
        
