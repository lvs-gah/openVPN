# openvpn-server
Update variables depending on region and EC2 instance you wish to use

Creates an OpenVPN Server via Terraform in AWS in default VPC &amp; Subnet

You can find the password for OpenVPN and URL information in the file /usr/local/openvpn_as/init.log

Login to the Web GUI of OpenVPN and login, then click Configuration -> Network Settings and change the IP to the Public IP of the server