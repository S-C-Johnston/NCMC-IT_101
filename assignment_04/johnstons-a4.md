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


