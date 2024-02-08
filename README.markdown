# Docker | Podman openvpn containers & Easy-RSA PKI CA

# Usage >
# docker build --tag ygvkn/ovpn .
# export OVPN_DATA="ovpn-data-$USER"

# docker volume create --name $OVPN_DATA

# docker run -v $OVPN_DATA:/etc/openvpn --rm ygvkn/ovpn ovpn_genconfig -u udp://<ip host | public IP>
# docker run -v $OVPN_DATA:/etc/openvpn --rm -it ygvkn/ovpn ovpn_initpki

# docker run -v $OVPN_DATA:/etc/openvpn -d -p 1111:1111/udp --cap-add=NET_ADMIN --name ovpn ygvkn/ovpn
# docker run -v $OVPN_DATA:/etc/openvpn --rm -it ygvkn/ovpn easyrsa build-client-full CLIENTNAME nopass
# docker run -v $OVPN_DATA:/etc/openvpn --rm ygvkn/ovpn ovpn_getclient CLIENTNAME > CLIENTNAME.ovpn

