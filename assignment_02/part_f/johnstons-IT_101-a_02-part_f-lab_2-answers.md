# Lab question answers

## Task 5 step 2

 1. Bridge ID priority for switches on VLAN 99?
    1. S1: 32867
    2. S2: 32867
    3. S3: 32867
 2. Bridge ID priority for S1  on VLAN 10, 20, 30, and 99
    1. VLAN 10: 32778
    2. VLAN 20: 32788
    3. VLAN 30: 32798
    4. VLAN 99: 32867
 3. Which switch is root?
    S2
 4. On root switch, Spanning Tree ports are blocking?
    None, they're all designated ports, and the root doesn't block by
definition.
 5. On non-root switches, which Spanning Tree ports are blocking?
    On S3, Fa0/1, 2 and 4 are blocking. On S1, only Fa0/4 is blocking
 6. How does STP elect the root switch?
    Bridge ID. Concatonate priority+VLANnumber with MAC address, lowest overall wins,
which means that the lowest priority number takes priority, and if there's a
tie the lowest MAC does.
 7. Priorities are tied, how does switch elect root?
    MAC Address, lower is better

## Task 6 questions

After optimizing:

Which switch is root for VLAN 99: S3

VLAN 99, which STP are in blocking on the new root switch: S3 shows none, all
Designated ports for Forwarding

VLAN 99, which STP are in blocking on the old root switch: S2 shows fa0/2
blocked, which is an alt path to root

S3 VLAN 10 shows, as it is not root for VLAN 10, Fa0/2-4 are blocked, and
Fa0/1 is a root port which forwards
