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


