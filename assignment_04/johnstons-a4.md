## Subnetting

### T/F MAC and network devices

 1. Switches make low-level comparisons: **True**

	Where forwarding to other segments is defined as sending it to the
gateway's MAC address so the gateway can handle it by IP.

 2. A switch doesn't forward if MAC is in same network segment: **True**

	A layer-2 switch just forwards packets by MAC, sending it down whichever
port it knows the MAC address is located in.

 3. Switches solve the problem of too much traffic on a network by dividing
	the network: **False**

    Layer-2 switches don't define subnets and are dumb to them, just pushing
	frames and packets based on MAC.

 4. When a switch forwards, it determins the precise segment: **False**

	Layer-2 switches do not know what subnet or segment a frame or packet will
arrive to, just the MAC address of the gateway stamped on the packet, and
sends it that direction. If the MAC address belongs to a router, the router
handles which segment the packet goes to.

 5. When a switch decides to forward, it uses only the IP address: **False**

	A layer-2 switch only makes a decision of which interface to use based on
MAC, not on IP.

### Multiple choice MAC and network devices

 6. Which of the following best describes a frame:

    Logical grouping of information

 7. At which OSI layer does routing occur:

    Network layer

 8. At which OSI layer does switching occur:

    Data link layer

 9. At which OSI layer is MAC address located:

    Data link layer

 10. If a workstation is moved within a network, what happens to MAC and IP:

     MAC address and IP address will stay the same

     (within network, assuming static IP and no DHCP goofiness)

 11. If a workstation is moved to another network, what happens to MAC and IP:

     IP address will change, MAC address will stay the same

 12. Routers pass packets between:

     hosts on the different networks

 13. Which part of IP address does a router ignore during determination:

     Source address

     (Destination address is obviously required, host address is effectively
equivalent, and routing tables often rely on network addresses)

 14. MAC addresses use a ??? scheme while IP addresses use a ??? scheme

     Flat, hierarchical

 15. What type of address is included in an IP header:

     source and destination IP and MAC addresses

     (most correct option, but an IP header is specific to a packet, and the
IP header as part of that packet is encapsulated in a frame. The frame header
contains MAC addresses, not the IP header.)

### T/F IP addresses

 1. If a device on network A is moved to network B, its IP address will
	change: **True**

 2. IP addresses are used to identify a machine on a network and the network
	to which it is attached: **True**

 3. Each network connected to the internet has a unique network number:
	**True**

	(Assuming that a "network connected to the internet" consists of a public
facing network block, which can be as small as 1 IP. A private network behind
a router is by definition not unique, but is also not directly connected, it's
connected by a router.)

 4. The network portion of every IP address is assigned by the local network
	administrator: **False**

    (Insofar as the "network portion" corresponds to a public IP network
block, in which case the network portion is assigned by the ISP and the local
address is assigned by the administrator. In a private network, the
administrator or DHCP server provides all details.)

### Multiple-choice IP addresses

 5. How many bits in an IP address: **32 bits**

 6. How many bytes in an IP address: **4 bytes**

 7. What is the minimum decimal value of an octet: **0**

 8. What is the maximum decimal value in a byte: **255**

 9. how many bits in a byte: **8**

 10. how many bytes are in a MAC address: **6**

### Classes of IP addresses

 1. Which class of IP address would 197.22.103.221 belong: **Class C**

 2. Which of the following dotted notations cannot represent an IP address:
	**301.188.12.77**

    (301 is outside the range an octet can express, the maximum being 255)

 3. In a class A network, the first 16 bits are used for the network part, and
	the last two octets are reserved for the host part: **False**

    (A class A network uses 8 bits for the network and 24 bits for the hosts)

 4. To what class of network would the ip address 144.26.108.15 belong:
	**Class B**

 5. To what class of network would the ip address 18.12.254.10 belong:
    **Class A**

 6. In the IP 190.233.21.12, how many octets have been assigned by the NIC:
	**Two octets**

    (A class B address, which uses 16 bits for network and 16 bits for hosts)

 7. In the IP 88.224.73.201, how many octest could be assigned locally by the
	network administrator: Three

    (Class A, 8 bit network 24 bit hosts)

 8. Select the IP address which would belong to the largest network:
	**69.22.214.158**

 9. Which of the folllowing best describes a class B network:
	**net.net.host.host**

 10. There are three classes of commercial networks: **True**

    (There are 5 classes, but class D and E reserved for special operations
and are not for commercial networks)

 11. Ip address with numbers 224-255 [in the first octet] are reserved for
	 multicast and experimental purposes: **True**

 12. A class C network address would have all 0s in the final octet: **True**

 13. In a class B network address the final two octets would have all 0s:
	 **True**

 14. Which of the following is an example of a class C network:
	 **196.25.10.0**

 15. which of the following best describes a class C network:
	 **net.net.net.host**

 16. Which of the folowing best describes a class A network:
	 **net.host.host.host**

 17. Which of the following is a class C IP address: **220.15.64.126**

 18. Select the IP address for the smallest network: **220.15.64.126**

     (242.etc.etc.etc is in class E, which is not a commercial network block)

 19. How many octets have been assigned by InterNIC in a class C network:
	 **Three**

     (InterNIC being the historical predecessor to ICANN)

 20. In a class A IP address, how many bits have been assigned for the hosts:
	 **Three**

### Binary to decimal conversion

 1. 11111111 => **255**

 2. 197.15.22.31 => **11000101.00001111.00010110.0001110**

 3. 197.15.22.127 => **11000101.00001111.00010110.01111111**

 4. Class B subnet mask may be 11111111.11111111.11111110.00000000 =>
	**255.255.254.0**

 5. Binary sequence for a subnet range borrowing three bits:
	**000,001,010,011,100,101,110,111**

 6. 0101 0101 => **85**

 7. 0111 1110 => **126**

 8. 0001 0000 => **16**

 9. 0110 0110 => **102**

 10. 0000 1000 => **8**

 11. 17 => **0001 0001**

 12. 128 => **1000 0000**

 13. 220 => **1101 1100**

 14. 240 => **1111 0000**

 15. 191 => **1011 1111**

### Broacast and subnet addresses

 1. Best defines a broadcast:
 **Data packet sent to all nodes on a network segment**

 2. Class C broadcast address: **221.218.253.255**

 3. In a class C subnet addresses up to six bits can be borrowed from the host
	field: **True, but**

    (In a Classful context, prior to CIDR which was introduced in 1993, the
greatest number of bits legally borrowed from the host field was 6. Well after
CIDR was introduced and Classful routing went the way of the Dodo, RFC 3021
introduced point-to-point subnet mask /31, which enabled a small subnet
between exactly two host addresses, since broadcasting isn't a real
consideration when the only target of a broadcast would be the host you're
trying to reach anyway. In a "Class C" network, the statement is true. In a
modern CIDR network, it is false, because up to 7 bits can be borrowed,
although the technical goofiness has weird implications for borrowing 8 bits.)

 4. Valid class B IP broadcast address with no subnets: **129.37.255.255**

 5. Which of the following is reserved for broadcast in 198.64.74.x/27:
	**.127**

    (Highest address in the 3rd block of 32 addresses, which is the number of
address in 2^5 bits)

 6. Valid class C IP subnet number /27: **.128**

    (Beginning of 4th block of 32 addresses)

 7. Valid class B IP subnet broadcast address:
    **1011 0110.0101 1101.0000 0000.0111 1111**

	(Class B, network mask 255.255, subnet mask 255.128 for 255.255.255.128,
CIDR /25, highest address fills the remaining bits, 32-25=7, 2^7=128 addresses
to a block)

 8. Which type of IP address can borrow 1 bit from the last octet to create
	subnets: **Class A, B and C can borrow 1 bit from the last octet**

 9. Which best describes the address 147.30.74.1: **Class B host address**

### Subnetting possible vs useable

 1. Subnet addresses are assigned locally: **True**

 2. Subnet addresses include only a network number and a host number:
	**False**

    (Subnet addresses include a network number, a subnet number, and a host
number. 192.168.1.128/25 would define a network 192.168.1 and a subnet number of
128, leaving 7 bits for a host number)

 3. Each time the number of bits borrowed from an 8 bit octet decreases, the
	decimal value representing the octet in the subnet mask increases by a
power of two: **False**

    (The decimal number representing the octet in the subnet mask _decreases_,
and not really by a power of two. The difference will be a power of two, such
as 8, 16, 32, but the number itself is not a clean power of two, being
composed of the sums of several powers of two. 32 -> 16 is a decrease by a
power of two, 224 -> 192 is a decrease of 64 which is a power of two, but
neither 224 nor 192 is a power of two in the first place.)

 4. How many subnets can be created with 4 borrowed bits: **16 subnets**

 5. How many subnets can be created with 5 borrowed bits: **32 subnets**

 6. How many subnets can be created with 6 borrowed bits: **64 subnets**

 7. How many actual subnets can be created with 4 borrowed bits, excluding
	ip-subnet zero: **14 subnets**

 8. How many actual subnets can be created with 5 borrowed bits, excluding
	ip-subnet zero: **30 subnets**

 9. How many possible subnets with 6 borrowed bits [excluding ip-subnet zero]:
	**62 subnets**

	(Assuming the bracketed text was elided as a typo, otherwise that's a
duplicate question and inconsistent with the last two questions, in which case
the answer is 64 subnets)

 10. In class C network with 3 borrowed bits for subnets, to which subnet would
	 host range 0110 0001 belong, excluding ip-subnet zero: **third subnet**

 11. How would the subnet 0110 0001 field for a class C IP address with 6
	 useable subnets be expressed in binary: **011**

     (While the subnet mask would borrow 5 bits for a /29 subnet mask, the
subnet field in the given octet would only be 0110 0xxx. The other options
presented added trailing ones, which affects the subnet number.)

 12. How would the third useable range of Class C IP address with eight
	 possible addresses be expressed in decimal, no ip-subnet zero: **64**

	 (No ip-subnet zero makes the 0th and the last subnet ID unavailable. 3
bits would normally suffice to describe 8 subnets, but the next size up would
be 4 bits describing 16 subnets, -2 for 14. That gives 14 'no ip-zubnet zero'
blocks, size of 16 addresses, and the third subnet address, disallowing zero,
would start at 0011 xxxx => 48, and the top end of that range would be the
64th class C address. All other numbers are out of bounds for the 3rd subnet.)

 13. How would 220 be expressed as a binary number in an octet: **1101 1100**

 14. Sixth possible subnetwork field of Class C IP address in binary: **101**

     (indexing from 000, which is the 1st _possible_ subnet)

 15. To what subnetwork on a class C network with three bits for a subnet
	 would a fourth octet expressed as 1010 1101 belong (no ip-subnet zero):
**fifth**

	 (Indexing from 001, the 1st subnet in such a case, the subnet 101 is just
its decimal value, the 5th subnet)

 16. How would the host field be expressed in binary of a class C IP address
	 which has 6 usable subnets for host number 13 (no ip-subnet zero):
     **0 1101**

 17. Which of the following describes the maximum number of bits that can be
	 borrowed in a class C network (no ip-subnet zero): **6 bits**

     (RFC 3021 introduced borrowing 7 bits, but this is multiple choice and
dealing with Classful networks.)

 18. Which of the following best describes the maximum number of bits that can
	 be borrowed in a class B network (no ip-subnet zero): **14 bits**

     (8 bits from the 3rd octet plus 6 bits from the fourth)

 19. If two bits are borrowed from the host field of a class C network, how
	 many possible subnetworks can be created: **4 subnets**

 20. If four bits are borrowed from the host field of a class B network, how
	 many subnets can be created (no ip-subnet zero): **16 subnets**

	 (multiple choice, but with no ip-subnet zero, only 14 subnets are
useable)

 21. If four bits are borrowed from the host field of a class B network, how
	 many possible hosts per subnetwork can be created: **4096 hosts**

     (multiple choice, but only 4094 would be useable because the 0th and the
last addresses would be network ID and broadcast, respectively.)

 22. If two bits are borrowed from the host field of a class B network, how
	 many possible hosts per subnetwork: **64 hosts**

     (multiple choice, only 62 would be useable as previously mentioned)

 23. If we have 4 possible subnets in our nework then how many bits have been
	 borrowed from the host field: **2 bits**

 24. If we have 4 possible subnets in our network, then what will the range of
	 binary host field numbers be for the first network:
     **xx00 0000-xx11 1111**

 25. If we have 4 possible subnets in our network then what decimal value
	 would be assigned to an octet expressed as 0101 1011: **.91**

 26. If we have 2 possible subnets in our network what would the binary
	 subnetwork field number be for the decimal host number expressed as .196:
     **10**

     (Subnetwork field for 2 possible subnets would amount to 0xxx xxxx and
1xxx xxxx)

 27. In a network with two bits borrowed for subnets, what would the binary
	 host field number be for the decimal host number expressed as .49:
     **xx11 0001**

### Subnet masking

 1. How would the subnet mask 255.255.255.0 be represented in dotted binary:
	**1111 1111.1111 1111.1111 1111.0000 0000**

 2. If only seven bits are borrowed in a class B network, what would the
	subnet mask be in dotted decimal: **255.255.254.0**

 3. What would the subnet mask be in dotted decimal if only five bits were
	borrowed from the third octet in a class B address (no ip-subnet zero):
    **255.255.248.0**

 4. What would the subnet mask be in dotted decimal notation if only one bit
	were borroed from the third octet in a class A address (no ip-subnet
    zero): **255.255.128.0**

 5. Subnet masks tell devices which part of an address is the network number
	including the subnet and which part is the host: **True**

 6. Subnet masks are 16 bits long adn are divided into two octets: **False**

 7. Subnet masks have all 0's in the network and subnetwork portion of their
	addresses: **False**

 8. Binary bits in the subnet mask are used to represent which of the
	following: **both b (subnet bits) and c (network bits)**

 9. What will the use of subnets do regarding the amount of broadcast traffic:
	**decrease, because broadcasts are not forwarded outside [the subnet]**

### Router Functions

 1. In the graphic, if device A3 is sending data to device C3, out of which
	port will the router send the data: **port C1**

 2. In the graphic, how many IP addresses does the router have:
    **4 IP addresses**

 3. In the graphic, if device A2 wants to send data to device A4, will the
	router forward the data to network B: **No**

 4. How many ports does the router in the graphic have: **4 ports**

### Whole enchilada problems

 1. Which of the following is the dotted decimal notation value of the host
	portion of a Class A IP address 38.0.53.28 with a subnet mask of
255.255.252.0: **1.228**

 2. Which of the following subnet masks will not be applicable to a class C IP
	address but can be used with a class B IP address: **255.2555.0 [sic]**

    (multiple choice, I assume this is a typo for 255.255.0.0, since it's the
only subnet mask in the list which can't be used for a class C IP)

 3. Which of the following is a valid address for a class A IP address with
	subnet mask of 255.255.240.0: **38.255.240.2 and 38.255.240.255**

	(subnet blocks of 16 addresses in 3rd octet, both 192 and 240 divide
evenly, so 0 would be the network address for 38.0.192.0, but with /20
38.0.255.255 would be the broadcast address for the network to which
38.0.240.255 belongs)

 4. Which of the following is a valid class B IP address with a subnet mask of
	255.255.255.224: **130.0.0.1 and 147.255.0.48**

	( /27 gives 32 address blocks in the 4th octet, class B is
128.0.0.0-191.255.255.255. Any address ending with a multiple of 32 or
one-short of a multiple, such as 31 is the a reserved address for the network
address or the broadcast address, respectively)

 5. Which of the following is the first available address for a class A IP
	address of 2.x.x.x with a subnet mask of 255.255.255.128: **2.0.0.1**

### Network Design with Subnets

#### Real Estate Office

16 agents, 1 receptionist, 1 owner: 18 humans

3 printers, 1 file server: 4 independent machines

A 24 port switch would cover all machines, add a router and a DSL modem with
subscription for one public address. If all machines must be connected to the
internet, the minimum IP addresses required from an ISP included a class C
block with a subnet borrowing 3 bits (/27), for a total of some 30 host addresses in
the network. Not factoring in equipment or DSL cost, installation expense
would probably run in the territory of 2-3 billable hours.

#### Veterinarian's Office

cousin, recptionist, office manager: 3 humans location A

Database server, 1 computer, dot-matrix and laser-jet printer: 4 machines
at location A

1 computer at home

cousin, receptionist, doctor: 3 humans location B

2 computers, laser-jet printer: 3 machines at location B

I'm unclear on the process of billing out DSL, but this would require at least
three DSL modems. The one at home could reasonably plug directly into the
modem IIRC. The ones at either location would require a modem and a router
behind it, with a LAN switch each. Neither location exceeds 4 machines which
could possibly require LAN access, so a pair of 4-port switches would do fine.
Probably 8-port switches would be wiser, however, to account for mild expansion
overhead.

One class C block with 5 subnet bits (/29) at each location would cover all
devices adequately.

#### ABC Packaging Company

5 departments:
 - Administration
   + 14 people
   + 5 printers
 - Engineering
   + 22 people
   + 5 printers
   + 1 file server
 - Production
   + 5 people
 - Accounting
   + 11 people
   + 4 printers
   + 1 datase and file server
 - Sales
   + 11 people
   + 4 printers
   + 1 file server

Each dept requires a separate subnet: round up from 5 to 8 subnets given by a
/27, which would give 32 addresses each, which is sufficient to cover the
largest department. Engineering has 27 machines between the people and the
printers, minus the server.

The servers equire a separate subnet: covered fine by overhead from existing
/27 subnet. The machines in the subnet would require only 4 addresses at most,
assuming there's a miscommunication and Accountings' database and file servers
are separate boxes.

Managed switches capable of VLAN tagging would be sufficient to handle the
subnetting while getting maximum density out of each. That would enable vlan
encapsulation with subinterfaces on the router, which would simplifiy
management considerably. Assuming I can't take the easy way out, each machine
could be configured manually with addresses for the networks
192.168.1.{0,32,64,96,128,160,etc} with subnet mask 255.255.255.224. The
router would only need one connection, but a sufficiently annoying routing
table, to the internal LANs. A local infrastructure (domain, DHCP, DNS, etc)
server would go a long way to simplify things, and ACLs are much easier to
manage with a domain server rather than on a router, but it isn't strictly
necessary for a sufficiently small *static* network.

Assuming these departments are segmented off physically, the logical topology
might look like:

- ISP demarc connected to the router
- router in MDF
  + at most 4 servers in MDF, connected to the backbone switch
  + 12 port backbone switch at MDF
    * 24 port switch in IDF for Administration
    * 32 port switch in IDF for Engineering
    * 8 port switch in IDF for Production
    * 16 port switch in IDF for Accounting
    * 16 port switch IDF for Sales

This doesn't leave any overhead for fault or expansion, really, so I'd advice
the next size up for each.

I can't reasonably estimate the billable hours, but with equipment in hand, I
bet I'd get this done within a work-week.

#### Website Company

- FDDI: Fiber Distributed Data Interface with its own protocol, late 80s/early
  90s fiber standard carrying 100 Mb/s. Superceded by ethernet which is
independent of protocol, carried by fiber or fastethernet copper. Indicates
essay scenario is relying on older technology.
- West: Floors 3, 4, 5
  + IDFs each floor
	* 20 nodes/hosts each floor
	* Cisco switches, 24 ports each
  + Cisco Catalyst switch backbone
- East: Floors 1..5
  + Unclear nodes per floor, assume 20
  + MDF with T1 capable router, ISP demarc and CSU/DSU, Cisco Catalyst
    backbone switch connected to the backbone in the west building, and very
certainly a beefy firewall given the the exposed IPs for so many hosts
	* Realistically, in a modern network, the connection would be greater than
	  a literal T1, either a business-class cable connection with associated
cable modem, or a fiber connection, etc
  + IDFs each floor
	* Unstated, assuming 20 nodes each floor
	* Cisco switches, 24 ports each
- Subnetting: two blocks of 62 IPs, given the context safely assumed to be
  Class C network blocks with two borroed bits, rather than CIDR, which would
be noted as /26
  + 198.74.56.{0..63,64..128}/26
	* This is not sufficient to give every host an IP, assuming that there are
	  160 hosts between the two buildings, 20 on each of the 8 floors which
have hosts
	* The problem of insufficient IPs is resolved in more modern networking
	  with NAT, allowing a small number of public IPs to service arbitrarily
many private IPs, which is generally more appropriate than using public IPs
for such end-user devices
  + Subnet mask compliant with the ISP provided IP blocks would be
    255.255.255.192, which would match the provided blocks exactly, with
network and broadcast addresses of 198.74.56.0 & 63, and 198.74.56.64 & 128
respectively
	* Since the provided IP blocks amount to one overarching block of
	  contiguous addresses, all routed through one edge-router and then
assigned to hosts all connected to one switched campus-area network, it
wouldn't be completely insane to use a subnet mask of 255.255.255.128, it's
just that nothing would be able to occupy the IP addresses ending in 0, 63,
64, or 128.  That would make either building's LAN susceptible to broadcasts
generated anywhere in the CAN, but it would reduce unnecessary router traffic.
	* Pursuant to the notion of unnecessary router traffic, it would be fairly
	  trivial to add an inter-LAN router whose purpose was to route between
the two buildings, and as such the edge router would only be routing to
exterior connections. Alternatively, multilayer or layer 3 switches would
suffice for this variety of CAN

#### John's Brewhouse

- Locations:
  + 10 chain locations

    PoS: 5, on-site servers: 2, switch: 1, exterior: 3

	* CamSwitch MA
	* Framingham MA
	* Wayne PA
	* Springfield PA
	* Pittsburgh PA
	* Manchester CT
	* Wilmington DE
	* Providence RI
	* Lake Grove NY
	* Washington DC
  + HQ Boston MA
    Servers: 3, switch: 1, PC: 1, exterior: 2
  + RCS Danvers MA
    Routers: 3, switches: 2, servers 3, PCs: 25, exterior: 2
    
- smallest number of IPs in one physical location: 7
  + (Assuming that the exterior gateways and switches also need IPs and that
    those are part of the same private network)
  + Although in each chain it looks like the PoS only interact internally with
	the servers, and do not cross the gateway boundary for anything
    themselves.

- total IPs for any chain location: 11

- largest number of IPs in one physical location: 35
  + (Same assumptions)
  + RCS, however, has a weird segment where 27 hosts are behind a switch
    attached separately to a router, which would be their default gateway.

- In the event of a modern layout, where each chain location's internal
  network were attached to an overall intranet using VPNs, and IPs were served
  by DHCP instead of static configuration, subnetting would be a non-issue,
  just a measure against broadcast storms over external lines. Valuable enough
  to still do it, but less important for IP management and allocation.
  + In the existing context, without adding extra equipment or servers, it is
	simplest to subnet so that each location has guaranteed internally-valid
    IPs. Static configuration, then, would only step on one location's own
    toes, rather than mangling the configuration elsewhere in the intranet.

- The web article at networkcomputing, which I retrieved in an
  [archive.org capture](https://web.archive.org/web/20121018010920/networkcomputing.com/1005/1005centerfoldtext.html)
  suggests that the dialup method over the publicly switched network would be
  replaced with internet connections, in which case they would implement
  firewalls and encryption. My opinion is that firewalling and encrypting data
  are always good ideas, but the article having been written in 1999, that
  functionality may not have been as baked in as it is now. I would add even
  basic firewalling at each exterior connection, which could be as simple as
  hosting it on the servers.

- Further the idea of an intranet, it looks as though the model of routers
  shown in the diagram, the Cisco 2501 and 2514, may support IPSec-based VPNs.

  It may be better from an engineering and security standpoint to use proper
  routers anyway. Even better if doing so enables VPN intranetting.

##### Subnetting:

My prediliction, in the event of designing with some clearance in mind, is to
use subnets at least large enough to handle an additional 50% of the currently
used IP space, gracefully. Subnetting operating on powers of 2 means that some
excessively large blocks will be allocated.

Since the blocks need to line up with appropriate edges to not conflict,
assigning blocks so that many small blocks in aggregate line up with a larger
block would be ideal. The best way to do this is to think about it the other
direction around, IME: assign the largest blocks first, to the low end of the
IP range, and then assign the smaller blocks in the remaining space.


If the assumptions above are correct, that the network equipment also need IPs
in their respective subnets, the cleanest subnets, providing some expansion
overhead: 
- /26 for all of RCS' location (64 addresses)
- /27 for each of the ten chain locations (32 addresses)
- /28 for the HQ and its servers (16 addresses)

If the RCS PC network is a separate subnet from the proxy server, which it
might be since they're served behind separate routers, then additionally:
- /30 for the proxy server, allowing for expansion (4 addresses)

i.e:

1. 172.16.1.0/26 (64 addresses)
2. 172.16.1.{64,96,128,etc}/27 (32 addresses each)
3. 172.16.2.128/28 (16 addresses)
4. 172.16.2.144/30 (4 addresses)

Addresses given assume that `ip subnet zero` is enabled.

However, that method leaves little understanding for the possibility of
increasingly many chain locations. There does not, to me, seem to be a reason
not to use a /24 scheme across the board and separate out the subnets in the
3rd octet, numbering for each location or each purpose. RCS and HQ might share
172.16.1.0, and each chain location might have 172.16.{1,2,3,4,etc}.0

That's a lot of empty IPs, sure, but that doesn't really matter in the context
of many separate locations each using IPs in a  *private* IP addressing
scheme. Having the subnets somehow semantically reflect information about
their location would be a net benefit, in my opinion. Further that end, I'm
using 172.16.0.0 subnets because that implies something to humans about the
context, each subnet being part of a larger valid network. The total number of
devices in the foreseeable future would be unlikely to eclipse the address
space of a 192.168.0.0 network, however. One could just as easily use any of
the private address spaces. The 10.0.0.0 private space could load a lot of
semantic value into the ip address, and be easier to memorize for technicians.
One might use the 2nd octet for which state the location is in, since the
franchise has locations in several states, and the 3rd for its function or
fine-grained location. That is, however, literally just semantics at that
point.
