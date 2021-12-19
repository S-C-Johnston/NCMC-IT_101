Tricky to set this up, since this lab seems to assume that a file is provided
that has all machines correctly configured only requiring cabling connections.

Once I figured out which routers and cables to use, it became easier.

Number one difficulty was the non-obviousness of the routing and DNS. Getting
that to work required correctly configuring the default gateway and some
specific routes for each router. Once accomplished, then all objectives
worked, between pinging from the family pc to the net server, and pinging from
the home pc to the switch behind the second router. I wasn't sure if the home
pc was supposed to have a special vpn connection to the second router or not,
but adjusting the routing tables certainly satisfied the requirements for this
lab.

Part 5 cannot be reasonably accomplished because that assumes the file is
working from a pre-configured file with physical topology laid out.
