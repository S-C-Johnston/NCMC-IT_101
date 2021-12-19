All objectives completed, including using subinterfaces and VLAN access.

In part 3, verifying connectivity, the VLAN'd PCs connected to the switch can
talk to each other fine, and the PC behind the wireless router can ping them,
but they cannot ping it. When trying to ping anything beyond the wireless
router, the ICMP ping is dropped because, quote:

"The receiving port has an inbound traffic access-list with an ID of 100"

And I can't identify any setting on the wireless router to make it not do
this, so I'm turning it in as is.
