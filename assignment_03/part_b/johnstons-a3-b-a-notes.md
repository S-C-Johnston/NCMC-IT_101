## Part 1

This lab absolutely assumes this project is starting from a pre-configured
file. Number one difficulty I was finding was combining DHCP with VLANs for
subinterfaces. I opened a practice file to futz with the concept, and figured
it out. Once I assigned the LAP port the VLAN 5, it started matching up with
the subinterface corresponding, and DHCP took effect almost immediately. That
was a prerequisite for proceeding with the lab.

```
ip dhcp pool LAP
option 43 ip 192.168.200.254
network 192.168.5.0 255.255.255.0
```

option 43 carries information about the WLC. Briefly looking it up, the
standard assumes it will carry vendor-specific information. In this case,
cisco end-to-end, it's as simple as assigning the option in the DHCP config on
the router. However, I'm not entirely clear on setting it on a DHCP server.

Prompt D:

The detail page for all APs provies a wealth of information, including AP
name, IP, Model, MAC, uptime, admin status, operational status, PoE status,
speed for each interface, clients, port (?), AP mode, certificate type, OEAP
(?), primary software version and backup software version, AP sub mode (?),
download status, upgrade role, mDNS status, Universal AP, and hyperlocation
