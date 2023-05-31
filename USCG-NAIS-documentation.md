{ toc }

# U.S. Coast Guard Acquisition Directorate

[Nationwide Automatic Identification System \| U.S. Coast Guard Acquisition Directorate](https://www.dcms.uscg.mil/Our-Organization/Assistant-Commandant-for-Acquisitions-CG-9/Programs/C4ISR-Programs/nais/)

> The Nationwide Automatic Identification System (NAIS) has enhanced the Coast Guard’s maritime domain awareness (MDA) of vessels operating in or approaching the nation’s waterways, ports and infrastructure. The system was based on the Automatic Identification System which was sanctioned by the International Maritime Organization as a global standard for ship-to-ship, ship-to-shore, and shore-to-ship communication. Permanent NAIS systems have been installed at 134 sites across 37 sectors. On a daily basis, NAIS receives approximately 120 million messages and provides data feeds to over 80 Coast Guard and other government agency systems. NAIS transitioned to sustainment in August 2018; two contracts are in place to provide corrective maintenance as well as engineering support services for information assurance, system administration, grooming processes and detailed troubleshooting requirements.
>
> NAIS contributes to a the concept of maritime domain awareness, which is a joint Coast Guard and U.S. Navy term for the effective understanding of anything associated with the global maritime domain that could impact the security, safety, economy or environment of the United States. By providing accurate information on vessel traffic to and from U.S. ports, NAIS helps to build a foundation of data that the government can use to develop effective maritime homeland security strategies.
>
> **Features**  
> - Land, sea and space-based AIS radio frequency infrastructure capable of receiving and transmitting information from and to AIS-equipped vessels in U.S. coastal zones, waterways and ports
> - Integrated AIS data storage, processing and networking infrastructure

[Coast Guard celebrates NAIS full operational capability milestone. Aug. 22, 2018 \| United States Coast Guard Acquisition Directorate](https://www.dcms.uscg.mil/Our-Organization/Assistant-Commandant-for-Acquisitions-CG-9/Newsroom/Latest-Acquisition-News/Article/1609227/coast-guard-celebrates-nais-full-operational-capability-milestone/)

> The Coast Guard’s Nationwide Automatic Identification System (NAIS) achieved full operational capability (FOC) on May 24, 2018.
>
> Jewuan Davis, program manager for the NAIS program (CG-9332), explained that FOC was achieved when the capability had been “deployed and accepted at the 58 critical ports and 11 waterways identified in the NAIS Operational Requirements document.” Currently, permanent transceiver systems are deployed and fully operational at 134 total regional sites, providing operational coverage of the 58 critical ports and 11 waterways. On a daily basis, NAIS receives an average of over 264 million vessel messages and provides data feeds to over 80 Coast Guard and other government agency systems worldwide.
>
> The milestone was recognized during a ceremony at Coast Guard Headquarters on July 26, 2018. In attendance were Rear Adm. Michael Ryan (CG-7), Rear Adm. Michael Johnston (CG-93) and Rear Adm. Michael Haycock (CG-9). During the ceremony, the flag officers shared real stories of how NAIS was used to enhance maritime domain awareness (MDA) across the Coast Guard.
>
> The NAIS acquisition stemmed from the Maritime Transportation Security Act of 2002 which directed requirements to establish a system of effective maritime domain awareness and security for every port act of 2006. MDA is defined as the effective understanding of anything associated with the maritime domain that could impact the security, safety, economy or environment. “The Coast Guard is the lead federal agency for maritime security, maritime safety, maritime mobility, national defense in U.S. coastal waters and protection of natural resources in U.S. coastal waters,” said Davis, “NAIS is critical to the Coast Guard’s ability to fulfill its responsibilities in those areas.”
>
> NAIS enables the Coast Guard to maintain MDA by providing a comprehensive view of the nation’s waters. As a result, decision makers are better positioned to respond to safety and security risks; improve the safety of vessels and ports through collision avoidance; and strengthen national security through the detection, identification, and classification of potential threats from offshore.
>
> The NAIS program started in 2004. Reflecting on the process 14 years later, Davis said, “A lot of detailed planning, interagency coordination, and hard work was invested into the successful completion of this milestone and full delivery of this capability to the Coast Guard’s operational users.” There are many contributors to thank for the success including the entire NAIS Program Management Office team and previous program managers and team members who put hard work and diligence into the early stages of developing NAIS. Davis extends a special thanks to the Office of Command, Control, Communications, Computer and Sensors Capabilities (CG-761); Sustainment Manager (CG-681); NAIS product line team at Command, Control, and Communications Engineering Center and all operational users for “helping us continually improve and refine the tool into the critical asset it is today.”
>
> The next major milestone for the NAIS acquisition program will be the completion of acquisition decision event 4, acquisition gate review and transition of management responsibility for NAIS from acquisitions to the sustainment community, scheduled to occur in the fourth quarter of fiscal year 2018. After that point, the sustainment community will assume responsibility for the continued maintenance of NAIS and managing technical refreshes of the capability to keep the system up to date.

# U.S. Coast Guard Navigation Center (NAVCEN)

[U.S. Coast Guard Navigation Center (NAVCEN)](https://www.navcen.uscg.gov/)

## Maritime Mobile Service Identity (MMSI)

[Maritime Mobile Service Identity \| NAVCEN](https://navcen.uscg.gov/maritime-mobile-service-identity)

> Maritime Mobile Service Identities (MMSIs) are nine-digit numbers used by maritime digital selective calling (DSC), automatic identification systems (AIS), and certain other equipment to uniquely identify a ship or a coast radio station. MMSIs are regulated and managed internationally by the International Telecommunications Union in Geneva, Switzerland, just as radio call signs are regulated. The MMSI format and use is documented in Article 19 of the ITU Radio Regulations and ITU-R Recommendation M.585-6, available from the ITU.

> **Maritime Identification Digits (MID)** MIDs are three digit identifiers ranging from 201 to 775 denoting the administration (country) or geographical area of the administration responsible for the ship station so identified. See the ITU Table of Maritime Identification Digits.
>
> **Ships** All ship MMSIs use the format M<sub>1</sub> I<sub>2</sub>D<sub>3</sub>X<sub>4</sub>X<sub>5</sub>X<sub>6</sub>X<sub>7</sub>X<sub>8</sub>X<sub>9</sub> where in the first three digits represent the Maritime Identification Digits (MID) and X is any figure from 0 to 9. (Hint: Ships transmitting with an MMSI not starting with the digits 201-775 are likely doing so improperly, and may be subject to FCC or USCG enforcement action).

```
's/[0-9]/<sub>&<\/sub>/g'
```

> **Coast Radio Stations (Base Stations)** All coast or base stations use the format 0<sub>1</sub>0<sub>2</sub>M<sub>3</sub>I<sub>4</sub>D<sub>5</sub><sub>0</sub><sub>6</sub><sub>0</sub><sub>7</sub><sub>0</sub><sub>8</sub><sub>0</sub><sub>9</sub>,where the digits 3, 4 and 5 represent the MID and X is any figure from 0 to 9. Groups of DSC coast radio stations use the same format.

## Vessel Information Verification Service (VIVS)

[Vessel Information Verification Service (VIVS)](https://navcen.uscg.gov/ais-vivs-home)

`convert -density 600 VIVS_Coverage.pdf -background white -flatten -resize 900x900^ -quality 100 VIVS_Coverage.png`

NAIS/VIVS Coverage:

<figure>
  ![NAIS/VIVS Coverage](/images/USCG/VIVS_Coverage.png)
  <figcaption>Caption for the image</figcaption>
</figure>



## Class A AIS Reports

[Class A AIS Position Report (Messages 1, 2, and 3) \| NAVCEN](https://navcen.uscg.gov/ais-class-a-reports)

> A Class A AIS unit broadcasts the following information every 2 to 10 seconds while underway, and every 3 minutes while at anchor at a power level of 12.5 watts.

<table>
<thead>
  <tr>
    <th>Parameter</th>
    <th>Bits</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Message ID</td>
    <td>6</td>
    <td>Identifier for this message 1, 2 or 3</td>
  </tr>
  <tr>
    <td>Repeat indicator</td>
    <td>2</td>
    <td>Used by the repeater to indicate how many times a message has been repeated. See Section 4.6.1, Annex 2; 0-3; 0 = default; 3 = do not repeat any more.</td>
  </tr>
  <tr>
    <td>User ID</td>
    <td>30</td>
    <td>MMSI number</td>
  </tr>
  <tr>
    <td>Navigational status</td>
    <td>4</td>
    <td>0 = under way using engine, 1 = at anchor, 2 = not under command, 3 = restricted maneuverability, 4 = constrained by her draught, 5 = moored, 6 = aground, 7 = engaged in fishing, 8 = under way sailing, 9 = reserved for future amendment of navigational status for ships carrying DG, HS, or MP, or IMO hazard or pollutant category C, high speed craft (HSC), 10 = reserved for future amendment of navigational status for ships carrying dangerous goods (DG), harmful substances (HS) or marine pollutants (MP), or IMO hazard or pollutant category A, wing in ground (WIG); 11 = power-driven vessel towing astern (regional use); 12 = power-driven vessel pushing ahead or towing alongside (regional use);<br>13 = reserved for future use,<br>14 = AIS-SART (active), MOB-AIS, EPIRB-AIS<br>15 = undefined = default (also used by AIS-SART, MOB-AIS and EPIRB-AIS under test)</td>
  </tr>
  <tr>
    <td>Rate of turn<br>ROT<sub>AIS</sub></td>
    <td>8</td>
    <td>0 to +126 = turning right at up to 708 deg per min or higher<br>0 to -126 = turning left at up to 708 deg per min or higher Values between 0 and 708 deg per min coded by ROT<sub>AIS</sub> = 4.733 SQRT(ROT<sub>sensor</sub>) degrees per min where ROT<sub>sensor</sub> is the Rate of Turn as input by an external Rate of Turn Indicator (TI). ROT<sub>AIS</sub> is rounded to the nearest integer value.<br>+127 = turning right at more than 5 deg per 30 s (No TI available)<br>-127 = turning left at more than 5 deg per 30 s (No TI available)<br>-128 (80 hex) indicates no turn information available (default).<br>ROT data should not be derived from COG information.</td>
  </tr>
  <tr>
    <td>SOG</td>
    <td>10</td>
    <td>Speed over ground in 1/10 knot steps (0-102.2 knots)<br>1 023 = not available, 1 022 = 102.2 knots or higher</td>
  </tr>
  <tr>
    <td>Position accuracy</td>
    <td>1</td>
    <td>The position accuracy (PA) flag should be determined in accordance with the table below:<br>1 = high (&lt;= 10 m)<br>0 = low (&gt; 10 m)<br>0 = default</td>
  </tr>
  <tr>
    <td>Longitude</td>
    <td>28</td>
    <td>Longitude in 1/10 000 min (+/-180 deg, East = positive (as per 2's complement), West = negative (as per 2's complement).<br>181= (6791AC0h) = not available = default)</td>
  </tr>
  <tr>
    <td>Latitude</td>
    <td>27</td>
    <td>Latitude in 1/10 000 min (+/-90 deg, North = positive (as per 2's complement), South = negative (as per 2's complement). 91deg (3412140h) = not available = default)</td>
  </tr>
  <tr>
    <td>COG</td>
    <td>12</td>
    <td>Course over ground in 1/10 = (0-3599). 3600 (E10h) = not available = default. 3 601-4 095 should not be used</td>
  </tr>
  <tr>
    <td>True heading</td>
    <td>9</td>
    <td>Degrees (0-359) (511 indicates not available = default)</td>
  </tr>
  <tr>
    <td>Time stamp</td>
    <td>6</td>
    <td>UTC second when the report was generated by the electronic position system (EPFS) (0-59, or 60 if time stamp is not available, which should also be the default value, or 61 if positioning system is in manual input mode, or 62 if electronic position fixing system operates in estimated (dead reckoning) mode, or 63 if the positioning system is inoperative)</td>
  </tr>
  <tr>
    <td>special maneuvre indicator</td>
    <td>2</td>
    <td>0 = not available = default<br>1 = not engaged in special maneuver<br>2 = engaged in special maneuver<br>(i.e.: regional passing arrangement on Inland Waterway)</td>
  </tr>
  <tr>
    <td>Spare</td>
    <td>3</td>
    <td>Not used. Should be set to zero. Reserved for future use.</td>
  </tr>
  <tr>
    <td>RAIM-flag</td>
    <td>1</td>
    <td>Receiver autonomous integrity monitoring (RAIM) flag of electronic position fixing device; 0 = RAIM not in use = default; 1 = RAIM in use. See Table</td>
  </tr>
  <tr>
    <td>Communication state (see below)</td>
    <td>19</td>
    <td>See Rec. ITU-R M.1371-5 Table 49</td>
  </tr>
  <tr>
    <td>Number of bits</td>
    <td>168</td>
    <td> </td>
  </tr>
</tbody>
</table>

> Communications State (19 bit field): The Communications State in Class A AIS Position Report messages is used in planning for the next transmission in order to avoiding mutual interference. It is inherent to the self organizing time division multiple access (SOTDMA) process. This information, along with the 6 bit time stamp information identified above, can also provide information on the existence of radio interference or other anomalies affecting reception of GPS signals in the local area.

### AIS Class A Ship Static and Voyage Related Data (Message 5)

> In addition, the Class A AIS unit broadcasts the following information every 6 minutes. Should only be used by Class A shipborne and SAR aircraft AIS stations when reporting static or voyage related data:

<table>
<thead>
  <tr>
    <th>Parameter</th>
    <th>Bits</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Message ID</td>
    <td>6</td>
    <td>Identifier for this Message</td>
  </tr>
  <tr>
    <td>Repeat indicator</td>
    <td>2</td>
    <td>Used by the repeater to indicate how many times a message has been repeated. Refer to §?4.6.1, Annex 2; 0-3; 0 = default; 3 = do not repeat any more</td>
  </tr>
  <tr>
    <td>User ID</td>
    <td>30</td>
    <td>MMSI number</td>
  </tr>
  <tr>
    <td>AIS version indicator</td>
    <td>2</td>
    <td>0 = station compliant with Recommendation ITU-R M.1371-1<br>1 = station compliant with Recommendation ITU-R M.1371-3 (or later)<br>2 = station compliant with Recommendation ITU-R M.1371-5 (or later)<br>3 = station compliant with future editions</td>
  </tr>
  <tr>
    <td>IMO number</td>
    <td>30</td>
    <td>0 = not available = default – Not applicable to SAR aircraft<br>0000000001-0000999999 not used<br>0001000000-0009999999 = valid IMO number;<br>0010000000-1073741823 = official flag state number.</td>
  </tr>
  <tr>
    <td>Call sign</td>
    <td>42</td>
    <td>7?=?6 bit ASCII characters, @@@@@@@ = not available = default<br>Craft associated with a parent vessel, should use “A” followed by the last<br>6 digits of the MMSI of the parent vessel. Examples of these craft include<br>towed vessels, rescue boats, tenders, lifeboats and liferafts.</td>
  </tr>
  <tr>
    <td>Name</td>
    <td>120</td>
    <td>Maximum 20 characters 6 bit ASCII "@@@@@@@@@@@@@@@@@@@@" = not available = default<br>The Name should be as shown on the station radio license. For SAR aircraft,<br>it should be set to “SAR AIRCRAFT NNNNNNN” where NNNNNNN<br>equals the aircraft registration number.</td>
  </tr>
  <tr>
    <td>Type of ship and cargo type</td>
    <td>8</td>
    <td>0 = not available or no ship = default<br>1-99 = as defined below<br>100-199 = reserved, for regional use<br>200-255 = reserved, for future use<br>Not applicable to SAR aircraft</td>
  </tr>
  <tr>
    <td>Overall dimension/reference for position</td>
    <td>30</td>
    <td>Reference point for reported position.<br>Also indicates the dimension of ship (m) <a href="https://navcen.uscg.gov/ais-class-a-static-voyage-message-5#_Reference_point_for">(see below)</a><br>For SAR aircraft, the use of this field may be decided by the responsible<br>administration. If used it should indicate the maximum dimensions of the<br>craft. As default should A = B = C = D be set to “0”</td>
  </tr>
  <tr>
    <td>Type of electronic position fixing device</td>
    <td>4</td>
    <td>0 = undefined (default)<br>1 = GPS<br>2 = GLONASS<br>3 = combined GPS/GLONASS<br>4 = Loran-C<br>5 = Chayka<br>6 = integrated navigation system<br>7 = surveyed<br>8 = Galileo,<br>9-14 = not used<br>15 = internal GNSS</td>
  </tr>
  <tr>
    <td>ETA</td>
    <td>20</td>
    <td>Estimated time of arrival; MMDDHHMM UTC<br>Bits 19-16: month; 1-12; 0 = not available = default<br>Bits 15-11: day; 1-31; 0 = not available = default<br>Bits 10-6: hour; 0-23; 24 = not available = default<br>Bits 5-0: minute; 0-59; 60 = not available = default<br>For SAR aircraft, the use of this field may be decided by the responsible administration</td>
  </tr>
  <tr>
    <td>Maximum present static draught</td>
    <td>8</td>
    <td>In 1/10 m, 255 = draught 25.5 m or greater, 0 = not available = default; in accordance with IMO Resolution A.851<br>Not applicable to SAR aircraft, should be set to 0</td>
  </tr>
  <tr>
    <td>Destination</td>
    <td>120</td>
    <td>Maximum 20 characters using 6-bit ASCII;<br>@@@@@@@@@@@@@@@@@@@@ = not available<br>For SAR aircraft, the use of this field may be decided by the responsible administration</td>
  </tr>
  <tr>
    <td>DTE</td>
    <td>1</td>
    <td>Data terminal equipment (DTE) ready (0 = available, 1 = not available = default)</td>
  </tr>
  <tr>
    <td>Spare</td>
    <td>1</td>
    <td>Spare. Not used. Should be set to zero. Reserved for future use.</td>
  </tr>
  <tr>
    <td>Number of bits</td>
    <td>424</td>
    <td>Occupies 2 slots</td>
  </tr>
</tbody>
</table>

## Class B AIS Reports

[Class B Reports](https://navcen.uscg.gov/ais-class-b-reports)

### AIS Standard Class B Equipment Position Report (Message 18)

<table>
<thead>
  <tr>
    <th>Parameter</th>
    <th>Bits</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Message ID</td>
    <td>6</td>
    <td>Identifier for Message 18; always 18</td>
  </tr>
  <tr>
    <td>Repeat indicator</td>
    <td>2</td>
    <td>Used by the repeater to indicate how many times a message has been repeated; 0-3; 0 = default; 3 = do not repeat anymore; should be 0 for “CS” transmissions</td>
  </tr>
  <tr>
    <td>User ID</td>
    <td>30</td>
    <td>MMSI number</td>
  </tr>
  <tr>
    <td>Spare</td>
    <td>8</td>
    <td>Not used. Should be set to zero. Reserved for future use</td>
  </tr>
  <tr>
    <td>SOG</td>
    <td>10</td>
    <td>Speed over ground in 1/10 knot steps (0-102.2 knots)<br>1 023 = not available, 1 022 = 102.2 knots or higher</td>
  </tr>
  <tr>
    <td>Position accuracy</td>
    <td>1</td>
    <td>1 = high (&lt;= 10 m)<br>0 = low (&gt; 10 m)<br>0 = default</td>
  </tr>
  <tr>
    <td>Longitude</td>
    <td>28</td>
    <td>Longitude in 1/10 000 min (+180º, East = positive (as per 2's complement)), West = negative (as per 2's complement);<br>181º (6791AC0h) = not available = default)</td>
  </tr>
  <tr>
    <td>Latitude</td>
    <td>27</td>
    <td>Latitude in 1/10 000 min (90º, North = positive (as per 2's complement)), South = negative (as per 2's complement);<br>91º = (3412140h) = not available = default)</td>
  </tr>
  <tr>
    <td>COG</td>
    <td>12</td>
    <td>Course over ground in 1/10= (0-3 599). 3 600 (E10h) = not available = default; 3 601-4 095 should not be used</td>
  </tr>
  <tr>
    <td>True heading</td>
    <td>9</td>
    <td>Degrees (0-359) (511 indicates not available = default)</td>
  </tr>
  <tr>
    <td>Time stamp</td>
    <td>6</td>
    <td>UTC second when the report was generated by the EPFS (0-59<br>or 60 if time stamp is not available, which should also be the default value or 61 if positioning system is in manual input mode or 62 if electronic position fixing system operates in estimated (dead reckoning) mode or 63 if the positioning system is inoperative)<br>61, 62, 63 are not used by "CS" AIS</td>
  </tr>
  <tr>
    <td>Spare</td>
    <td>2</td>
    <td>Not used. Should be set to zero. Reserved for future use</td>
  </tr>
  <tr>
    <td>Class B unit flag</td>
    <td>1</td>
    <td>0 = Class B SOTDMA unit<br>1 = Class B "CS" unit</td>
  </tr>
  <tr>
    <td>Class B display flag</td>
    <td>1</td>
    <td>0 = No display available; not capable of displaying Message 12 and 14<br>1 = Equipped with integrated display displaying Message 12 and 14</td>
  </tr>
  <tr>
    <td>Class B DSC flag</td>
    <td>1</td>
    <td>0 = Not equipped with DSC function<br>1 = Equipped with DSC function (dedicated or time-shared)</td>
  </tr>
  <tr>
    <td>Class B band flag</td>
    <td>1</td>
    <td>0 = Capable of operating over the upper 525 kHz band of the marine band<br>1 = Capable of operating over the whole marine band<br>(irrelevant if "Class B Message 22 flag" is 0)</td>
  </tr>
  <tr>
    <td>Class B Message 22 flag</td>
    <td>1</td>
    <td>0 = No frequency management via Message 22 , operating on AIS1, AIS2 only<br>1 = Frequency management via Message 22</td>
  </tr>
  <tr>
    <td>Mode flag</td>
    <td>1</td>
    <td>0 = Station operating in autonomous and continuous mode = default<br>1 = Station operating in assigned mode</td>
  </tr>
  <tr>
    <td>RAIM-flag</td>
    <td>1</td>
    <td>RAIM (Receiver autonomous integrity monitoring) flag of electronic position fixing device; 0 = RAIM not in use = default; 1 = RAIM in use</td>
  </tr>
  <tr>
    <td>Communication state selector flag</td>
    <td>1</td>
    <td>0 = SOTDMA communication state follows<br>1 = ITDMA communication state follows<br>(always "1" for Class-B "CS")</td>
  </tr>
  <tr>
    <td>Communication state</td>
    <td>19</td>
    <td>SOTDMA communication state. Because Class B "CS" does not use any Communication State information, this field shall be filled with the following value: 1100000000000000110.</td>
  </tr>
  <tr>
    <td>Number of bits</td>
    <td>168</td>
    <td>Occupies one slot</td>
  </tr>
</tbody>
</table>

## Message 24: Static Data Report

> Equipment that supports Message 24 part A shall transmit once every 6 min alternating between channels.
>
> Message 24 Part A may be used by any AIS station to associate a MMSI with a name.
>
> Message 24 Part A and Part B should be transmitted once every 6 min by Class B “CS” and Class B “SO” shipborne mobile equipment. The message consists of two parts. Message 24B should be transmitted within 1 min following Message 24A.

### Message 24 Part A

<table>
<thead>
  <tr>
    <th>Parameter</th>
    <th>Bits</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Message ID</td>
    <td>6</td>
    <td>Identifier for Message 24; always 24</td>
  </tr>
  <tr>
    <td>Repeat indicator</td>
    <td>2</td>
    <td>Used by the repeater to indicate how many times a message has been repeated. 0 = default; 3 = do not repeat any more</td>
  </tr>
  <tr>
    <td>User ID</td>
    <td>30</td>
    <td>MMSI number</td>
  </tr>
  <tr>
    <td>Part number</td>
    <td>2</td>
    <td>Identifier for the message part number; always 0 for Part A</td>
  </tr>
  <tr>
    <td>Name</td>
    <td>120</td>
    <td>Name of the MMSI-registered vessel. Maximum 20 characters 6-bit ASCII, @@@@@@@@@@@@@@@@@@@@ = not<br>available = default<br>For SAR aircraft, it should be set to “SAR AIRCRAFT NNNNNNN” where NNNNNNN equals the aircraft registration number</td>
  </tr>
  <tr>
    <td>Number of bits</td>
    <td>160</td>
    <td>Occupies one-time period</td>
  </tr>
</tbody>
</table>

### Message 24 Part B

<table>
<thead>
  <tr>
    <th>Parameter</th>
    <th>Bits</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Message ID</td>
    <td>6</td>
    <td>Identifier for Message 24; always 24</td>
  </tr>
  <tr>
    <td>Repeat indicator</td>
    <td>2</td>
    <td>Used by the repeater to indicate how many times a message has been repeated. 0 = default; 3 = do not repeat any more</td>
  </tr>
  <tr>
    <td>User ID</td>
    <td>30</td>
    <td>MMSI number</td>
  </tr>
  <tr>
    <td>Part number</td>
    <td>2</td>
    <td>Identifier for the message part number; always 1 for Part B</td>
  </tr>
  <tr>
    <td>Type of ship and cargo type</td>
    <td>8</td>
    <td>0 = not available or no ship = default<br>1-99 = as defined in § 3.3.2<br>100-199 = reserved, for regional use<br>200-255 = reserved, for future use<br>Not applicable to SAR aircraft</td>
  </tr>
  <tr>
    <td>Vendor ID</td>
    <td>42</td>
    <td>Unique identification of the Unit by a number as defined by the manufacturer (option; "@@@@@@@" = not available = default)<br>See vendor Identification field table below</td>
  </tr>
  <tr>
    <td>Call sign</td>
    <td>42</td>
    <td>Call sign of the MMSI-registered vessel. 7 X 6 bit ASCII characters, "@@@@@@@" = not available = default<br>Craft associated with a parent vessel should use “A” followed by the last 6 digits of the MMSI of the parent vessel. Examples of these craft include towed vessels, rescue boats, tenders, lifeboats and life rafts</td>
  </tr>
  <tr>
    <td>Dimension of ship/reference for position.</td>
    <td>30</td>
    <td>Dimensions of ship in meters and reference point for reported position.<br>For SAR aircraft, the use of this field may be decided by the responsible administration. If used it should indicate the maximum dimensions of the craft. As default should A = B = C = D be set to “0”.</td>
  </tr>
  <tr>
    <td>Type of electronic position fixing device</td>
    <td>4</td>
    <td>0 = Undefined (default); 1 = GPS, 2 = GLONASS, 3 = combined GPS/GLONASS, 4 = Loran-C, 5 = Chayka, 6 = integrated navigation system, 7 = surveyed; 8 = Galileo, 9-14 = not used, 15 = internal GNSS</td>
  </tr>
  <tr>
    <td>Spare</td>
    <td>2</td>
    <td> </td>
  </tr>
  <tr>
    <td>Number of bits</td>
    <td>168</td>
    <td>Occupies one-time period</td>
  </tr>
</tbody>
</table>

## USCG AIS Encoding Guide v.25

[USCG AIS Encoding Guide v.25](https://www.navcen.uscg.gov/sites/default/files/pdf/AIS/AISGuide.pdf)

> This Guide is intended to assist in the
> proper encoding of an Automatic
> Identification System (AIS) used in
> U.S. navigable waters

> **Static Data**…should be encoded at installation and reflect the
vessel’s official radio license or documentation

> **Maritime Mobile Service Identity (MMSI)** must reflect the MMSI assigned to the vessel by the FCC or one of its agents.
>
> **Vessel Names** that exceed the AIS’s 20 character limit should be shortened
> (not truncated) to 15 character-spaces, followed by an underscore \{\_\},
> thence the last 4 characters-spaces of the vessel name, e.g. GRAND JOLLY
> ROGER OF THE SEA to GRAND JOLLY OF \_ SEA, THE GRAND JOLLY ROGER to THE
> GRAND JOLLY_OGER. Names should not include vessel type precursors, e.g.
> F/V, M/V, MV, OSV, P/V, REC, S/V, T/B; except public vessels, e.g. CG, CBP, USN,
> LAPD, NYFD, WSF. Undocumented vessels should reflect the vessel’s state
> registration number−vice name̶−preceded by ‘US#’, e.g. US#AZ1234YZ.
>
> **Call-sign** must reflect the call-sign assigned to the vessel by
the FCC; absent an assignment, leave blank.
>
> **IMO Number** must reflect the assigned 7-digit IMO number.
> Use leading zeroes (not trailing zeroes) to fill the parameter,
> e.g. 0001234567. U.S. vessels without an IMO assignment
> should (if your AIS is 10-digit capable) input their U.S. official
> number preceded by ‘10000’, e.g. 1001234567, 1000123456.
>
> **Type of positioning source** must reflect the
> actual positioning system in use; i.e. interfaced
> to the AIS or the internal AIS EPFS.
>
> **Type of vessel (and cargo)** should reflect the
> appropriate Ship Type listed in the Table; but,
> not its cargo type.
>
> **Antenna Position \| Dimensions (ABCD values)**
> must be encoded in meters, not feet, and reflect
> the overall dimensions of the vessel, ABDC
> values expressed as the distance fore (A), aft
> (B), to port (C), and to starboard (D) to the
> positioning-system antenna used by AIS; the
> intersection of the two white lines in the
> diagram. Improper calibration or encoding could
> navigation safety.

> **Voyage Related Data**…should be encoded as needed
and kept accurate and up to date
>
> **Navigation Status** must always be up-to-date, i.e. at anchor,
> underway, engaged in fishing, etc. Vessels engaged in towing,
> if capable, should use Navigation Status ‘11’ when towing
> astern or ‘12’ when pushing ahead or alongside.
>
> Remember to change update your status when at anchor
or moored, which reduces AIS reporting rates to every 3
minutes; thus mitigates network congestion and
improves overall AIS efficiency and range.
>
> **Static Draft** must be encoded in meters, not feet, and reflect
> the vessel’s actual or maximum draft.
>
> **People on Board (POB)**, although some legacy AIS devices
allow for POB reporting it is not required.
>
> **Estimated Time of Arrival (ETA)** must be encoded in
> Universal Time Coordinated (UTC), not local time; and, reflect
> the ETA to your destination or voyage departure time, if
> moored or anchored. Not applicable to vessels on unknown
> or variable schedules (e.g. workboats).

<table>
  <caption>AIS ‘Type of Ship’ parameter</caption>
<thead>
  <tr>
    <th>1st digit</th>
    <th>2nd digit</th>
    <th>[3x] others “engaged in”</th>
    <th>[5x] special craft</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>0 – Not available</td>
    <td>0 – All ships of this type</td>
    <td>30 – Fishing should include fish processors and fish tenders*</td>
    <td>50 – Pilot vessel</td>
  </tr>
  <tr>
    <td>1 – Reserved for future use</td>
    <td>1 – Carrying DG, HS or MP , IMO hazard or pollutant category X DO NOT USE</td>
    <td>31 – Towing ahead or alongside, but, not astern*</td>
    <td>51 – Search and rescue vessels, i.e. USCG boats, USCG Auxiliaryboats, assistance towers, first-responders, standby vessels</td>
  </tr>
  <tr>
    <td>2 – WIG (Wing-In-Ground) craft</td>
    <td>2 – Carrying DG, HS, or MP, IMO hazard or pollutant category Y DO NOT USE</td>
    <td>32 – Towing astern, regardless whether the and length of the tow exceeds 200 m or breadth exceeds 25 m*</td>
    <td>52 – Tugs, light boats, fleet boats, or similar workboats</td>
  </tr>
  <tr>
    <td>3 – Other vessels engaged in actions listed in column [3x]</td>
    <td>3 – Carrying DG, HS, or MP, IMO hazard or pollutant category Z DO NOT USE</td>
    <td>33 – Engaged in dredging or underwater operations, or other equipment operations that may obstruct navigation (such as buoy tending, exploration, ice breaking, production, salvaging,sampling, surveying, or other similar activities, but, not diving,fishing, towing or military operations)*</td>
    <td>53 – Port tenders, yacht tenders, dive tenders, attending and off-shore supply vessels, or similar support craft; but, not fish tenders</td>
  </tr>
  <tr>
    <td>4 – HSC (hi-speed craft) or passenger ferries</td>
    <td>4 – Carrying DG, HS, or MP, IMO hazard or pollutant category OS DO NOT USE</td>
    <td>34 – Engaged in diving operations or other types of operations with persons in the water*</td>
    <td>54 – Vessels with anti-pollution facilities or equipment</td>
  </tr>
  <tr>
    <td>5 – Special craft per column [5x]</td>
    <td>5 – Reserved for future use</td>
    <td>35 – Engaged in military operations or other types of restrictedoperations*</td>
    <td>55 – Law enforcement vessels, i.e. U.S. Customs and Border Protection vessels, Department of Natural Resources Conservationboats, marine police boats , etc.</td>
  </tr>
  <tr>
    <td>6 – Passenger ships other than HSC and passenger ferries; not including tendersor off-shore supply vessels [see 53]</td>
    <td>6 – Reserved for future use</td>
    <td>36 – Sailing vessels*</td>
    <td>56 – Spare–for assignments to local vessels DO NOT USE</td>
  </tr>
  <tr>
    <td>7 –Cargo (freight) ships or integrated tug barge (ITB) vessels</td>
    <td>7 – Reserved for future use</td>
    <td>37 – Pleasure craft</td>
    <td>57 – Spare–for assignments to local vessels, i.e. articulated tug-barges, pushboats, long haulers, whose dimensions (See Fig.1, ABCD values) represent the overall rectangular area of the vessel including its tow* Do not use when ABCD values DO NOT include the tow</td>
  </tr>
  <tr>
    <td>8 – Tankers or integrated tug tank barge vessels</td>
    <td>8 – Reserved for future use</td>
    <td>38 – Reserved for future use</td>
    <td>58 – Medical transports (as defined in the 1949 Geneva Convention and Additional Protocols) or similar public safety vessels</td>
  </tr>
</tbody>
</table>
