# Hardware picks standard across all distribution frames

Erring on the side of more than I need rather than less, I'm going with a 48
port current-gen Cisco switch which supplies PoE to all ports. It draws up to
1kW and supplies up to 30W to each client device: https://www.insight.com/en_US/shop/product/C9200-48P-A/CISCO%20SYSTEMS/C9200-48P-A/Cisco-Catalyst-9200--Network-Advantage--switch--48-ports--smart--rackmountable/

[project_switch]: https://www.insight.com/en_US/shop/product/C9200-48P-A/CISCO%20SYSTEMS/C9200-48P-A/Cisco-Catalyst-9200--Network-Advantage--switch--48-ports--smart--rackmountable/

It is probable that each distribution frame will require multiple kW-UPSs. To
which end, as a basic choice across all frames, pending additional details,
I've selected this UPS: https://www.insight.com/en_US/shop/product/9PX5K/EATON/9PX5K/Eaton-9PX-9PX5K--UPS--45-kW--5000-VA/

[IDF-A_UPS]: https://www.insight.com/en_US/shop/product/9PX5K/EATON/9PX5K/Eaton-9PX-9PX5K--UPS--45-kW--5000-VA/

## MDF
6 drops each standard room: 4x PoE wall jack, PoE WAP, and PoE clock
26 standard rooms: 156 horizontal runs

computer lab: 1 WAP, 1 Clock, 11 4x jack drops: 44 horizontal runs

## IDF-A
6 drops each room: 4x PoE wall jack, PoE WAP, and PoE clock
19 rooms: 114 horizontal runs
+2 clocks
total 116 drops
covered adequately with at least 50% expansion overhead by 4 count of:

[Cisco switch][project_switch]

Those switches demand 1kW each, and with four of them, the power should be
adequately supplied by 1 count of:

[Eaton UPS][IDF-A_UPS]

power consumption of 4.5kW outputs approximately 15354 BTU/hr. I'm unable to
track down an HVAC solution for this on my own terms, and I imagine in the
scope of an actual building project, this would be billed out with the rest of
the building's requirements. In any case, two 1.5 ton AC units would
adequately cover the requirements for cooling in this IDF.

## IDF-B
