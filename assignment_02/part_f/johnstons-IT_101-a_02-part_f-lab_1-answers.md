# Answers to lab questions
## Task 4 step 2

 1. What is the bridge ID priority?
   1. S1: 32769
   2. S2: 32769
   3. S3: 32769
 2. What switch is root?
    Switch 2 picked it up
 3. On [the root switch] which STP port are in a blocking state?
    None
 4. On [a switch with blocking] which STP ports are blocking?
    On S1 it's blocking fa0/1, which links to S3
 5. How does STP elect the root switch?
	Priority is concatenated to numeric MAC Address to form 'Bridge ID',
lowest Bridge ID wins. Comparison first selects the priority, and compares MAC
if and only if priority is the same.
 6. Since bridge priority is the same, what else does the switch use to
	determine root?
    MAC address, lowest wins.

## Task 5 step 3
Since the ``debug spanning-tree`` commands aren't implemented in Cisco packet
tracer, I'll make observations from the logs included with the lab.

Looks like S2, when disconnected from the root, assumes that it is the root
initially. When it received new STP information, it concludes that it isn't
the root, but that the root is routed through fa0/2

S3, when the link between S1 and S2 goes down, switches from blocking state to
listening state on its link to S1. When it understands that a topology change
has happened, by way of fa0/2 becoming a root port when S2 initially assumes
it is the root, it changes state from blocking to listening, then to learning,
where it reconfigures as appropriate and no data transmission happens for 15
seconds apiece, wherein root election is negotiated. Forwarding is achived
when it understands the new topology.

## Task 5 step 4
 1. What changed about S2 forwarding?
    S2 now forwards data bound for the root down fa0/2 instead of fa0/1, since
that's the interface which has a path for the root.
 2. What changed about S3 forwarding?
    Since S3 understands that there isn't a redundant path to S2, it no longer
blocks it on fa0/2.
