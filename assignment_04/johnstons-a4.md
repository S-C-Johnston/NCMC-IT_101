## Subnetting

### T/F MAC/IP

 1. Switches make low-level comparisons: **True**

	Where forwarding to other segments is defined as sending it to the
gateway's MAC address so the gateway can handle it by IP.

 2. A switch doesn't forward if MAC is in same network segment: **True**

	A layer-1 switch just forwards packets by MAC, sending it down whichever
port it knows the MAC address is located in.

 3. Switches solve the problem of too much traffic on a network by dividing
	the network: **False**

    Layer-1 switches don't define subnets and are dumb to them, just pushing
	frames and packets based on MAC.

 4. When a switch forwards, it determins the precise segment: **False**

	Layer-1 switches do not know what subnet or segment a frame or packet will
arrive to, just the MAC address of the gateway stamped on the packet, and
sends it that direction. If the MAC address belongs to a router, the router
handles which segment the packet goes to.

 5. When a switch decides to forward, it uses only the IP address: **False**

	A layer-1 switch only makes a decision of which interface to use based on
MAC, not on IP.

### Multiple choice

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

### Multiple-choice IP address
