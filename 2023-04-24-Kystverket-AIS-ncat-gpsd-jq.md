---
layout: post
title: Kystverket AIS data using OpenCPN, ncat, gpsd, and jq
topic: cli
---

[Access to AIS data \| Kystverket](https://www.kystverket.no/en/navigation-and-monitoring/ais/access-to-ais-data/)

> AIS data are also available at the following IP address: 153.44.253.27 port 5631

We use the following tools. We use `nc` (`netcat`) and `ncat` because (a) I've never used either, and (b) to see that `ncat` gives the same results as `nc`.

[OpenCPN](https://opencpn.org/)

[nc(1) - OpenBSD manual pages](https://man.openbsd.org/nc.1)

[Ncat Users' Guide \| Nmap](https://nmap.org/ncat/guide/index.html)

[gpsdecode(1) \| gpsd](https://gpsd.gitlab.io/gpsd/gpsdecode.html)

[jq](https://devdocs.io/jq/)

[5.5. Selecting Values \| Guide to Linux jq Command for JSON Processing. Last updated: April 22, 2023. Written by: Jonathan Cook \| Baeldung](https://www.baeldung.com/linux/jq-command-json#5-selecting-values)

---

First, we view the AIS data from 153.44.253.27 port 5631 using OpenCPN.

# OpenCPN

![OpenCPN connection to 153.44.253.27 5631](/images/OpenCPN/Kystverket_OpenCPN_April_24_2023.png)

# nc

```bash
timeout 1s nc 153.44.253.27 5631 > nc_1s
```

```
\s:2573345,c:1682294942*00\!BSVDM,1,1,,B,13mo2<?P05Pm<5rU<oBFGgv62@28,0*04
\s:2573238,c:1682294943*0A\!BSVDM,1,1,,B,H3m8KH0dpn0PUA8400000000000,2*11
\s:2573315,c:1682294943*04\!BSVDM,1,1,,B,33mD6a5000PSIMdT7Af8oUH60En:,0*3D
\s:2573335,c:1682294943*06\!BSVDM,1,1,,A,B3m:0KP008:2pF96iUcQ3wQQnD`b,0*59
\s:2573455,c:1682294943*07\!BSVDM,1,1,,A,39NWvhQ0011?ebjW;KiJ:TOl0000,0*78
\s:2573010,c:1682294943*02\!BSVDM,1,1,,A,33m;7@50P0PHDnvRSn7G4V662DhJ,0*16
\s:2573135,c:1682294943*04\!BSVDM,1,1,,B,13n3l5?P00PTiSdQAPOv4?v62@2D,0*39
\s:2573535,c:1682294943*00\!BSVDM,1,1,,A,33n05650001Ffv2Wmn255Q660DP:,0*1B
\s:2573565,c:1682294943*05\!BSVDM,1,1,,A,13mQ>O70001e0v0`MqKut9d800RC,0*37
\s:2573345,c:1682294942*00\!BSVDM,2,1,6,B,53m>jk800000hOCK?81LThhTd0000000000000160`942t00000000000000,0*48
\s:2573345,c:1682294942*00\!BSVDM,2,2,6,B,00000000000,2*38
\s:2573305,c:1682294943*05\!BSVDM,2,1,7,B,53mTON82F9nThHMV220MDpp5:0h4pMH62222220N50R786mc;D0@C1DmCQ88,0*03
\s:2573305,c:1682294943*05\!BSVDM,2,2,7,B,88888888880,2*39
\s:2573225,c:1682294944*01\!BSVDM,2,1,8,B,53mBCJ81gcR0aP5<0008:0hTI@E800000000000l0pc5759@07Tm0EPCQiDP,0*7F
\s:2573225,c:1682294944*01\!BSVDM,2,2,8,B,00000000000,2*36
\s:2573545,c:1682294944*00\!BSVDM,1,1,,A,13n53M00001P2kN`4iFPqJL60@2F,0*00
\s:2573145,c:1682294944*04\!BSVDM,2,1,5,B,53n7B282>=S4hIE:220DpE8MV1=L4r222222221J315:95;DN>jCTl2DQD`8,0*2E
\s:2573145,c:1682294944*04\!BSVDM,2,2,5,B,88888888880,2*3B
!BSVDM,1,1,,B,13o4Wl00000J:blQi8IsgWJP0@9P,0*19
\s:2573315,c:1682294944*03\!BSVDM,1,1,,A,H3n21e04pMHTd00000000000000,2*0F
\s:2573593,c:1682294944*0B\!BSVDM,1,1,,A,B>1VPd@04pSm8E:4Mcu8Cwv0RJGT,0*73
```

```bash
cat nc_1s | gpsdecode > nc_gpsd_1s
```

```bash
head -n 1 nc_gpsd_1s
```

```json
{"class":"AIS","device":"stdin","type":1,"repeat":0,"mmsi":257802800,"scaled":true,"status":15,"status_text":"Not defined","turn":"nan","speed":0.5,"accuracy":true,"lon":11.619302,"lat":65.013455,"course":163.0,"heading":511,"second":3,"maneuver":0,"raim":true,"radio":65672}
```

```bash
jq --slurp '.' nc_gpsd_1s > nc_gpsd_jq_1s.json
```

```bash
jq '.[0]' nc_gpsd_jq_1s.json
```

```json
{
  "class": "AIS",
  "device": "stdin",
  "type": 1,
  "repeat": 0,
  "mmsi": 257802800,
  "scaled": true,
  "status": 15,
  "status_text": "Not defined",
  "turn": "nan",
  "speed": 0.5,
  "accuracy": true,
  "lon": 11.619302,
  "lat": 65.013455,
  "course": 163,
  "heading": 511,
  "second": 3,
  "maneuver": 0,
  "raim": true,
  "radio": 65672
}
```

---

```bash
timeout 60s nc 153.44.253.27 5631 > nc_60s
```

```bash
cat nc_60s | gpsdecode > nc_gpsd_60s
```

```bash
head -n 1 nc_gpsd_60s
```

```json
{"class":"AIS","device":"stdin","type":1,"repeat":0,"mmsi":259707000,"scaled":true,"status":0,"status_text":"Under way using engine","turn":0,"speed":2.3,"accuracy":false,"lon":19.028200,"lat":69.694137,"course":215.6,"heading":220,"second":1,"maneuver":0,"raim":false,"radio":49235}
```

```bash
jq --slurp '.' nc_gpsd_60s > nc_gpsd_jq_60s.json
```

```bash
jq '.[0]' nc_gpsd_jq_60s.json
```

```json
{
  "class": "AIS",
  "device": "stdin",
  "type": 1,
  "repeat": 0,
  "mmsi": 259707000,
  "scaled": true,
  "status": 0,
  "status_text": "Under way using engine",
  "turn": 0,
  "speed": 2.3,
  "accuracy": false,
  "lon": 19.0282,
  "lat": 69.694137,
  "course": 215.6,
  "heading": 220,
  "second": 1,
  "maneuver": 0,
  "raim": false,
  "radio": 49235
}
```

---

```bash
timeout 1080s nc 153.44.253.27 5631 > nc_1080s_UTC_2023_04_25_16_07
```

```bash
cat nc_1080s_UTC_2023_04_25_16_07 | gpsdecode | jq --slurp '.' > nc_1080s_UTC_2023_04_25_16_07.json
```

```bash
jq '.[0]' nc_1080s_UTC_2023_04_25_16_07.json
```

```json
{
  "class": "AIS",
  "device": "stdin",
  "type": 5,
  "repeat": 0,
  "mmsi": 257595600,
  "scaled": true,
  "imo": 9321378,
  "ais_version": 2,
  "callsign": "LMOV",
  "shipname": "ODANE",
  "shiptype": 30,
  "shiptype_text": "Fishing",
  "to_bow": 10,
  "to_stern": 18,
  "to_port": 5,
  "to_starboard": 3,
  "epfd": 0,
  "epfd_text": "Undefined",
  "eta": "01-01T00:00Z",
  "draught": 5,
  "destination": "48300615",
  "dte": 0
}
```

---

```bash
timeout 3600s nc 153.44.253.27 5631 > nc_3600s
```

```bash
cat nc_3600s | gpsdecode > nc_gpsd_3600s
```

```bash
wc -l nc_gpsd_3600s
```

```
114202 nc_gpsd_3600s
```

```bash
jq --slurp '.' nc_gpsd_3600s > nc_gpsd_jq_3600s.json
```

```bash
jq '.[0]' nc_gpsd_jq_3600s.json
```

```json
{
  "class": "AIS",
  "device": "stdin",
  "type": 1,
  "repeat": 0,
  "mmsi": 257027750,
  "scaled": true,
  "status": 0,
  "status_text": "Under way using engine",
  "turn": 0,
  "speed": 0,
  "accuracy": false,
  "lon": 11.220803,
  "lat": 64.838193,
  "course": 360,
  "heading": 347,
  "second": 40,
  "maneuver": 0,
  "raim": false,
  "radio": 49214
}
```

```
47M     nc_gpsd_jq_3600s.json
```

# ncat

```bash
timeout 1s ncat 153.44.253.27 5631 > ncat_1s
```

```
\s:2573565,c:1682368277*0B\!BSVDM,1,1,,A,13n4g@g0001dFQr`Je;DeFVR08:Q,0*53
\s:STX995357575156,c:1682368277*60\!BSVDM,1,1,,A,33oaO<5000PG1J0S?r>;T2hR0E:r,0*61
\s:2573145,c:1682368278*02\!BSVDM,1,1,,A,34`Iv81P000NPc>QEPPdiwwp8m0J,0*0B
\s:2573243,c:1682368278*07\!BSVDM,1,1,,B,33n4PTUP@00F8kRRtW0l5WPN0E::,0*44
\s:2573335,c:1682368278*07\!BSVDM,2,1,9,B,53mLcN800000hI0V221<<4p8Tv0@59B22222221@70:644rdR;ARDj1PDSDp,0*5A
\s:2573335,c:1682368278*07\!BSVDM,2,2,9,B,88888888880,2*37
\s:2573325,c:1682368278*06\!BSVDM,1,1,,B,B3m=cPP000;q2Ua4hO7Q3w`QjFgb,0*2B
\s:2573135,c:1682368278*05\!BSVDM,1,1,,A,B>1Vuph02p9AkI8CWiHCSwv0RJGT,0*46
\s:2573405,c:1682368278*03\!BSVDM,2,1,9,B,53n3Rn`2FwTPhL=4001=@tdd4H`u8@000000000t4Pd864rdR8m2Sm50KASl,0*51
\s:2573405,c:1682368278*03\!BSVDM,2,2,9,B,URBp5;lP000,2*30
\s:2573305,c:1682368278*04\!BSVDM,1,1,,A,13m=Rf00000Lnd>ShL`LJ`4P08:a,0*57
\s:2573565,c:1682368278*04\!BSVDM,1,1,,B,B3m;M8000PK33e:6`3qgOw`UoP06,0*5D
\s:2573315,c:1682368278*05\!BSVDM,1,1,,A,33mWRj50000SQhFT7FUI:QFT0E1:,0*1A
\s:2573210,c:1682368278*01\!BSVDM,1,1,,A,33mEd=5P00PJDi@QfgOv4?vT0JRh,0*5C
\s:2573405,c:1682368278*03\!BSVDM,1,1,,B,13mwdO0P000n;vtU?Qe>4?vT0<0G,0*3A
\s:2573424,c:1682368278*00\!BSVDM,1,1,,B,H3m7Cb0I8tdp400000000000000,2*2B
\s:2573515,c:1682368278*03\!BSVDM,1,1,,A,13n056002510BVLWPM4:I`LT06Qt,0*68
\s:2573345,c:1682368278*00\!BSVDM,1,1,,B,EhHPVa14:VbV2WJ0000000000000J1eeBU8sp00003`P00,4*2C
\s:2573575,c:1682368278*05\!BSVDM,1,1,,B,13m6VU0000Qnq;r`WGu0v5j200Rv,0*6B
\s:2573315,c:1682368278*05\!BSVDM,1,1,,A,13m8WGPOi@PROF`T7?R1dQVP0L18,0*5C
```

---

```bash
timeout 3600s ncat 153.44.253.27 5631 > ncat_3600s
```

```bash
cat ncat_3600s | gpsdecode > ncat_gpsd_3600s
```

```bash
wc -l ncat_gpsd_3600s
```

```
115613 ncat_gpsd_3600s
```

```bash
jq --slurp '.' ncat_gpsd_3600s > ncat_gpsd_jq_3600s.json
```

```bash
jq '.[0]' ncat_gpsd_jq_3600s.json
```

```json
{
  "class": "AIS",
  "device": "stdin",
  "type": 18,
  "repeat": 0,
  "mmsi": 257732900,
  "scaled": true,
  "reserved": 0,
  "speed": 0.1,
  "accuracy": false,
  "lon": 6.630712,
  "lat": 58.227287,
  "course": 319.3,
  "heading": 511,
  "second": 31,
  "regional": 0,
  "cs": true,
  "display": false,
  "dsc": true,
  "band": true,
  "msg22": true,
  "raim": true,
  "radio": 917510
}
```

```
4.5M    ncat_3600s_UTC_2023_04_24_20_25.json
```

```
47M     ncat_gpsd_jq_3600s.json
```

---

```bash
timeout 3600s ncat 153.44.253.27 5631 > ncat_3600s_UTC_2023_04_24_20_25
```

```bash
cat ncat_3600s_UTC_2023_04_24_20_25 | gpsdecode | jq --slurp '.' > ncat_3600s_UTC_2023_04_24_20_25.json
```

```bash
jq '.[0]' ncat_3600s_UTC_2023_04_24_20_25.json
```

```json
{
  "class": "AIS",
  "device": "stdin",
  "type": 21,
  "repeat": 0,
  "mmsi": 992581021,
  "scaled": true,
  "aid_type": 3,
  "aid_type_text": "Fixed offshore structure",
  "name": "HYWIND TAMPEN HY04",
  "lon": 5.067205,
  "lat": 60.829205,
  "accuracy": false,
  "to_bow": 0,
  "to_stern": 0,
  "to_port": 0,
  "to_starboard": 0,
  "epfd": 1,
  "epfd_text": "GPS",
  "second": 53,
  "regional": 0,
  "off_position": false,
  "raim": false,
  "virtual_aid": true
}
```

```
4.5M    ncat_3600s_UTC_2023_04_24_20_25.json
```

---

```bash
timeout 21600s ncat 153.44.253.27 5631 > ncat_21600s
```

```bash
cat ncat_21600s | gpsdecode > ncat_gpsd_21600s
```

```bash
jq --slurp '.' ncat_gpsd_21600s > ncat_gpsd_jq_21600s.json
```

```bash
jq '.[0]' ncat_gpsd_jq_21600s.json
```

```json
{
  "class": "AIS",
  "device": "stdin",
  "type": 5,
  "repeat": 0,
  "mmsi": 257080750,
  "scaled": true,
  "imo": 9664433,
  "ais_version": 0,
  "callsign": "LGMC",
  "shipname": "EIDSVAAG OPAL",
  "shiptype": 90,
  "shiptype_text": "Other Type - all ships of this type",
  "to_bow": 21,
  "to_stern": 64,
  "to_port": 9,
  "to_starboard": 9,
  "epfd": 1,
  "epfd_text": "GPS",
  "eta": "04-21T02:45Z",
  "draught": 4.8,
  "destination": "FISHFARMS",
  "dte": 0
}
```

```
142M    ncat_gpsd_jq_21600s.json
```