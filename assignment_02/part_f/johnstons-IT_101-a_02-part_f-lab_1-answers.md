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
