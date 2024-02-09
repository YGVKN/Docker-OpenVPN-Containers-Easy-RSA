docker volume create --name $OVPN_DATA
docker run -v $OVPN_DATA:/etc/openvpn --rm zhuzha/ovpn:ldap ovpn_genconfig -u udp://192.168.111.4:1111
docker run -v $OVPN_DATA:/etc/openvpn --rm -it zhuzha/ovpn:ldap ovpn_initpki
docker run --rm  -d -p 1111:1111/udp -v $OVPN_DATA:/etc/openvpn --cap-add=NET_ADMIN --sysctl net.ipv6.conf.all.disable_ipv6=0 --sysctl net.ipv6.conf.default.forwarding=1 --sysctl net.ipv6.conf.all.forwarding=1 --name ovpn-ldap zhuzha/ovpn:ldap
