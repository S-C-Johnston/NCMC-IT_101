UDP port for CAPWAP tunelling is 5274

The path the Ping follows from laptop0 to pc0 is:

 1. laptop0 -> WAP0 as imcp-ping
 2. WAP0 -> switch0 as CAPWAP
 3. switch0 -> WLC0 as CAPWAP
 4. WLC0 -> switch0 as CAPWAP
 5. switch0 -> PC0 as CAPWAP
 6. PC0 -> switch0 as CAPWAP
 7. switch0 -> WLC0 as CAPWAP
 8. WLC0 -> switch0 for broadcast 255.255.255.255 as CAPWAP
 9. switch0 -> WAP0, PC0, server0 and router0 as CAPWAP, only WAP0 accepts it
 10. WAP0 -> laptop0 as CAPWAP
