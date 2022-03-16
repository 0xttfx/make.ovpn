# make.ovpn
Bash script for creating unified .ovpn file

The script will print in STDOUT the base.conf file, the standard VPN client configuration file, and concatenate at the end the CA file of the certificate authority, and successively the client's key and certificate and the TLS key "ta" redirecting to a only file named <name.ovpn> in ~/client-configs/files directory

...\o/...
