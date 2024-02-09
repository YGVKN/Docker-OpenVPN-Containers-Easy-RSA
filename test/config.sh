#!/bin/bash
set -e

testAlias+=(
	[zhuzha/openvpn]='openvpn'
)

imageTests+=(
	[openvpn]='
	paranoid
        conf_options
        client
        basic
        dual-proto
        otp
	iptables
	revocation
	'
)
