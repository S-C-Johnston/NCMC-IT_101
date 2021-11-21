# Hardware picks standard across all distribution frames

Erring on the side of more than I need rather than less, I'm going with a 48
port current-gen Cisco switch which supplies PoE to all ports. It is assumed
that at least the VoIP phones, Wireless Access Points, and Clocks will be run
on PoE. This switch draws up to 1kW and supplies up to 30W to each client
device:
https://www.insight.com/en_US/shop/product/C9200-48P-A/CISCO%20SYSTEMS/C9200-48P-A/Cisco-Catalyst-9200--Network-Advantage--switch--48-ports--smart--rackmountable/

[project_switch]: https://www.insight.com/en_US/shop/product/C9200-48P-A/CISCO%20SYSTEMS/C9200-48P-A/Cisco-Catalyst-9200--Network-Advantage--switch--48-ports--smart--rackmountable/

There is a need for an edge router in this consideration. As a quick and dirty
approximation of what's appropriate, a Cisco integrated router model 4321
should be sufficient:
https://www.insight.com/en_US/shop/product/ISR4321-V%2FK9/CISCO%20SYSTEMS/ISR4321-V%2FK9/Cisco-Integrated-Services-Router-4321--Unified-Communications-Bundle--router--rackmountable/

[project_router]: https://www.insight.com/en_US/shop/product/ISR4321-V%2FK9/CISCO%20SYSTEMS/ISR4321-V%2FK9/Cisco-Integrated-Services-Router-4321--Unified-Communications-Bundle--router--rackmountable/

It is probable that each distribution frame will require multiple kW-UPSs. To
which end, as a basic choice across all frames, pending additional details,
I've selected this UPS:
https://www.insight.com/en_US/shop/product/9PX5K/EATON/9PX5K/Eaton-9PX-9PX5K--UPS--45-kW--5000-VA/

[IDF-A_UPS]: https://www.insight.com/en_US/shop/product/9PX5K/EATON/9PX5K/Eaton-9PX-9PX5K--UPS--45-kW--5000-VA/

Unfortunately, VAR sites are not particularly forthcoming with cooling and
HVAC, which is presumably in the scope of the specifying the HVAC needs of the
entire building. As such, I'll be calling for an even number of units by their
tonnage capability, where AC tonnage is 12,000 BTUs.

## MDF
6 drops each standard room: 4x wall jack, WAP, and clock
26 standard rooms: 156 horizontal runs

computer lab: 1 WAP, 1 Clock, 11 4x jack drops: 44 horizontal runs

media center: 3 4x jack drops, 1 WAP, 1 clock: 14 horizontal runs

administration offices: 3 WAPs, 6 4x jack drops, and 6 clocks: 33 horizontal
runs

other misc: 2 clocks, 1 clock & 4x jack drop, 1 WAP: 8 horizontal runs

Total: 255 horizontal runs, which is adequately covered with 50% expansion
overhead of 8 count of:

[Cisco switch][project_switch]

A router is necessary, and it by definition should life in the MDF. It would
consume some 120 Watts

[Cisco router][project_router]

Which should draw approximately 8 kW of power between them. The networking
equipment only -not accounting for servers, SANs, etc- is adequately
covered by 2 count of this UPS, which has capacity for 4.5 kW:

[Eaton UPS][IDF-A_UPS]

Total heat generation of the MDF's networking equipment -not accounting for
server hardware- should be in the territory of 30,700 BTUs. Climate control
needs for the MDF should be adequately handled by a pair of HVAC units capable
of handling at least 2.75 tons, or 4 units handling 1.5 tons each.

## IDF-A
6 drops each room: 4x wall jack, WAP, and clock
19 rooms: 114 horizontal runs
misc: 2 clocks: 2 horizontal runs
Total: 116 horizontal runs
covered adequately with at least 50% expansion overhead by 4 count of:

[Cisco switch][project_switch]

Those switches demand 1kW each, and with four of them, the power should be
adequately supplied by 1 count of:

[Eaton UPS][IDF-A_UPS]

power consumption of 4.5kW outputs approximately 15354 BTU/hr. Two 1.5 ton AC
units would adequately cover the requirements for cooling in this IDF.

## IDF-B
