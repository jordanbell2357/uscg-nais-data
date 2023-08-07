# ITU-R M.1371-5

[M.1371 : Technical characteristics for an automatic identification system using time division multiple access in the VHF maritime mobile frequency band (Rec. ITU-R M.1371-5) \| ITU](https://www.itu.int/rec/R-REC-M.1371-5-201402-I/en)

# Table 1: Class A shipborne mobile equipment reporting intervals

<table>
  <caption>Table 1: Class A shipborne mobile equipment reporting intervals (p. 8)</caption>
  <thead>
    <tr>
      <th>Ship’s dynamic conditions</th>
      <th>Nominal reporting interval</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Ship at anchor or moored and not moving faster than 3 knots</td>
      <td>3 min</td>
    </tr>
    <tr>
      <td>Ship at anchor or moored and moving faster than 3 knots</td>
      <td>10 s</td>
    </tr>
    <tr>
      <td>Ship 0-14 knots</td>
      <td>10 s</td>
    </tr>
    <tr>
      <td>Ship 0-14 knots and changing course</td>
      <td>3 1/3 s</td>
    </tr>
    <tr>
      <td>Ship 14-23 knots</td>
      <td>6 s</td>
    </tr>
    <tr>
      <td>Ship 14-23 knots and changing course</td>
      <td>2 s</td>
    </tr>
    <tr>
      <td>Ship > 23 knots</td>
      <td>2 s</td>
    </tr>
    <tr>
      <td>Ship > 23 knots and changing course</td>
      <td>2 s</td>
    </tr>
  </tbody>
</table>

<table>
  <caption>Table 2: Reporting intervals for equipment other than Class A shipborne mobile equipment (p. 9)</caption>
  <thead>
    <tr>
      <th>Platform’s condition</th>
      <th>Nominal reporting interval</th>
      <th>Increased reporting interval</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Class B "SO" shipborne mobile equipment not moving faster than 2 knots</td>
      <td>3 min</td>
      <td>3 min</td>
    </tr>
    <tr>
      <td>Class B "SO" shipborne mobile equipment moving 2-14 knots</td>
      <td>30 s</td>
      <td>30 s</td>
    </tr>
    <tr>
      <td>Class B "SO" shipborne mobile equipment moving 14-23 knots</td>
      <td>15 s</td>
      <td>30 s</td>
    </tr>
    <tr>
      <td>Class B "SO" shipborne mobile equipment moving >23 knots</td>
      <td>5 s</td>
      <td>15 s</td>
    </tr>
    <tr>
      <td>Class B "CS" shipborne mobile equipment not moving faster than 2 knots</td>
      <td>3 min</td>
      <td>-</td>
    </tr>
    <tr>
      <td>Class B "CS" shipborne mobile equipment moving faster than 2 knots</td>
      <td>30 s</td>
      <td>-</td>
    </tr>
    <tr>
      <td>Search and rescue aircraft (airborne mobile equipment)</td>
      <td>10 s</td>
      <td>-</td>
    </tr>
    <tr>
      <td>Aids to navigation</td>
      <td>3 min</td>
      <td>-</td>
    </tr>
    <tr>
      <td>AIS base station</td>
      <td>10 s</td>
      <td>-</td>
    </tr>
  </tbody>
</table>

# Table 48: Message descriptions. Position reports

<table>
  <caption>Table 48: Message descriptions. Position reports (pp. 109-110)</caption>
  <tr>
    <th>Parameter</th>
    <th>Number of bits</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>Message ID</td>
    <td>6</td>
    <td>Identifier for this Message 1, 2 or 3</td>
  </tr>
  <tr>
    <td>Repeat indicator</td>
    <td>2</td>
    <td>Used by the repeater to indicate how many times a message has been repeated. See § 4.6.1, Annex 2; 0-3; 0 = default; 3 = do not repeat any more</td>
  </tr>
  <tr>
    <td>User ID</td>
    <td>30</td>
    <td>Unique identifier such as MMSI number</td>
  </tr>
  <tr>
    <td>Navigational status</td>
    <td>4</td>
    <td>0 = under way using engine, 1 = at anchor, 2 = not under command, 3 = restricted maneuverability, 4 = constrained by her draught, 5 = moored, 6 = aground, 7 = engaged in fishing, 8 = under way sailing, 9 = reserved for future amendment of navigational status for ships carrying DG, HS, or MP, or IMO hazard or pollutant category C, high speed craft (HSC), 10 = reserved for future amendment of navigational status for ships carrying dangerous goods (DG), harmful substances (HS) or marine pollutants (MP), or IMO hazard or pollutant category A, wing in ground (WIG); 11 = power-driven vessel towing astern (regional use), 12 = power-driven vessel pushing ahead or towing alongside (regional use); 13 = reserved for future use, 14 = AIS-SART (active), MOB-AIS, EPIRB-AIS 15 = undefined = default (also used by AIS-SART, MOB-AIS and EPIRB-AIS under test)</td>
  </tr>
  <tr>
    <td>Rate of turn ROTAIS</td>
    <td>8</td>
    <td>0 to +126 = turning right at up to 708° per min or higher 0 to –126 = turning left at up to 708° per min or higher Values between 0 and 708° per min coded by ROTAIS = 4.733 SQRT(ROTsensor) degrees per min where ROTsensor is the Rate of Turn as input by an external Rate of Turn Indicator (TI). ROTAIS is rounded to the nearest integer value. +127 = turning right at more than 5° per 30 s (No TI available) –127 = turning left at more than 5° per 30 s (No TI available) –128 (80 hex) indicates no turn information available (default). ROT data should not be derived from COG information.</td>
  </tr>
  <tr>
    <td>SOG</td>
    <td>10</td>
    <td>Speed over ground in 1/10 knot steps (0-102.2 knots) 1 023 = not available, 1 022 = 102.2 knots or higher</td>
  </tr>
  <tr>
    <td>Position accuracy</td>
    <td>1</td>
    <td>The position accuracy (PA) flag should be determined in accordance with Table 50 1 = high (≤ 10 m) 0 = low (>10 m) 0 = default</td>
  </tr>
  <tr>
    <td>Longitude</td>
    <td>28</td>
    <td>Longitude in 1/10 000 min (±180°, East = positive (as per 2’s complement), West = negative (as per 2’s complement). 181 = (6791AC0h) = not available = default)</td>
  </tr>
  <tr>
    <td>Latitude</td>
    <td>27</td>
    <td>Latitude in 1/10 000 min (±90°, North = positive (as per 2’s complement), South = negative (as per 2’s complement). 91° (3412140h) = not available = default)</td>
  </tr>
  <tr>
    <td>COG</td>
    <td>12</td>
    <td>Course over ground in 1/10 = (0-3 599). 3 600 (E10h) = not available = default. 3 601-4 095 should not be used</td>
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
    <td>Special manoeuvre indicator</td>
    <td>2</td>
    <td>0 = not available = default 1 = not engaged in special manoeuvre 2 = engaged in special manoeuvre (i.e. regional passing arrangement on Inland Waterway)</td>
  </tr>
  <tr>
    <td>Spare</td>
    <td>3</td>
    <td>Not used. Should be set to zero. Reserved for future use.</td>
  </tr>
  <tr>
    <td>RAIM-flag</td>
    <td>1</td>
    <td>Receiver autonomous integrity monitoring (RAIM) flag of electronic position fixing device; 0 = RAIM not in use = default; 1 = RAIM in use. See Table 50</td>
  </tr>
  <tr>
    <td>Communication state</td>
    <td>19</td>
    <td>See Table 49</td>
  </tr>
  <tr>
    <td>Number of bits</td>
    <td>168</td>
    <td></td>
  </tr>
</table>

## Navigational status (from Table 48)

<table>
 <caption>Navigational status (from Table 48, p. 109)</caption>
<thead>
  <tr>
    <th>Navigational status:</th>
    <th>Description:</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>0</td>
    <td>Under way using engine</td>
  </tr>
  <tr>
    <td>1</td>
    <td>At anchor</td>
  </tr>
  <tr>
    <td>2</td>
    <td>Not under command</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Restricted maneuverability</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Constrained by her draught</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Moored</td>
  </tr>
  <tr>
    <td>6</td>
    <td>Aground</td>
  </tr>
  <tr>
    <td>7</td>
    <td>Engaged in fishing</td>
  </tr>
  <tr>
    <td>8</td>
    <td>Under way sailing</td>
  </tr>
  <tr>
    <td>9</td>
    <td>Reserved for future amendment of navigational status for ships carrying DG, HS, or MP, or IMO hazard or pollutant category C, high-speed craft (HSC)</td>
  </tr>
  <tr>
    <td>10</td>
    <td>Reserved for future amendment of navigational status for ships carrying dangerous goods (DG), harmful substances (HS) or marine pollutants (MP), or IMO hazard or pollutant category A, wing in ground (WIG)</td>
  </tr>
  <tr>
    <td>11</td>
    <td>Power-driven vessel towing astern (regional use)</td>
  </tr>
  <tr>
    <td>12</td>
    <td>Power-driven vessel pushing ahead or towing alongside (regional use)</td>
  </tr>
  <tr>
    <td>13</td>
    <td>Reserved for future use</td>
  </tr>
  <tr>
    <td>14</td>
    <td>AIS-SART (active), MOB-AIS, EPIRB-AIS</td>
  </tr>
  <tr>
    <td>15</td>
    <td>Undefined = default (also used by AIS-SART, MOB-AIS, and EPIRB-AIS under test)</td>
  </tr>
</tbody>
</table>

# Table 52: Ship static and voyage related data

<table>
  <caption>Table 52: Ship static and voyage related data (pp. 112-113)</caption>
  <tr>
    <th>Parameter</th>
    <th>Number of bits</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>Message ID</td>
    <td>6</td>
    <td>Identifier for this Message</td>
  </tr>
  <tr>
    <td>Repeat indicator</td>
    <td>2</td>
    <td>Used by the repeater to indicate how many times a message has been repeated. Refer to § 4.6.1, Annex 2; 0-3; 0 = default; 3 = do not repeat any more</td>
  </tr>
  <tr>
    <td>User ID</td>
    <td>30</td>
    <td>MMSI number</td>
  </tr>
  <tr>
    <td>AIS version indicator</td>
    <td>2</td>
    <td>0 = station compliant with Recommendation ITU-R M.1371-1
1 = station compliant with Recommendation ITU-R M.1371-3 (or later)
2 = station compliant with Recommendation ITU-R M.1371-5 (or later)
3 = station compliant with future editions</td>
  </tr>
  <tr>
    <td>IMO number</td>
    <td>30</td>
    <td>0 = not available = default – Not applicable to SAR aircraft
0000000001-0000999999 not used
0001000000-0009999999 = valid IMO number;
0010000000-1073741823 = official flag state number.</td>
  </tr>
  <tr>
    <td>Call sign</td>
    <td>42</td>
    <td>7 x 6 bit ASCII characters, @@@@@@@ = not available = default. Craft associated with a parent vessel, should use “A” followed by the last 6 digits of the MMSI of the parent vessel. Examples of these craft include towed vessels, rescue boats, tenders, lifeboats and liferafts.</td>
  </tr>
  <tr>
    <td>Name</td>
    <td>120</td>
    <td>Maximum 20 characters 6 bit ASCII, as defined in Table 47
“@@@@@@@@@@@@@@@@@@@@” = not available = default.
The Name should be as shown on the station radio license. For SAR aircraft, it should be set to “SAR AIRCRAFT NNNNNNN” where NNNNNNN equals the aircraft registration number.</td>
  </tr>
  <tr>
    <td>Type of ship and cargo type</td>
    <td>8</td>
    <td>0 = not available or no ship = default
1-99 = as defined in § 3.3.2
100-199 = reserved, for regional use
200-255 = reserved, for future use
Not applicable to SAR aircraft</td>
  </tr>
  <tr>
    <td>Overall dimension/reference for position</td>
    <td>30</td>
    <td>Reference point for reported position. Also indicates the dimension of ship (m) (see Fig. 41 and § 3.3.3)
For SAR aircraft, the use of this field may be decided by the responsible administration. If used it should indicate the maximum dimensions of the craft. As default should A = B = C = D be set to “0”</td>
  </tr>
  <tr>
    <td>Type of electronic position fixing device</td>
    <td>4</td>
    <td>0 = undefined (default)
1 = GPS
2 = GLONASS
3 = combined GPS/GLONASS
4 = Loran-C
5 = Chayka
6 = integrated navigation system
7 = surveyed
8 = Galileo,
9-14 = not used
15 = internal GNSS</td>
  </tr>
  <tr>
    <td>ETA</td>
    <td>20</td>
    <td>Estimated time of arrival; MMDDHHMM UTC
Bits 19-16: month; 1-12; 0 = not available = default
Bits 15-11: day; 1-31; 0 = not available = default
Bits 10-6: hour; 0-23; 24 = not available = default
Bits 5-0: minute; 0-59; 60 = not available = default
For SAR aircraft, the use of this field may be decided by the responsible administration</td>
  </tr>
  <tr>
    <td>Maximum present static draught</td>
    <td>8</td>
    <td>In 1/10 m, 255 = draught 25.5 m or greater, 0 = not available = default; in accordance with IMO Resolution A.851
Not applicable to SAR aircraft, should be set to 0</td>
  </tr>
  <tr>
    <td>Destination</td>
    <td>120</td>
    <td>Maximum 20 characters using 6-bit ASCII; @@@@@@@@@@@@@@@@@@@@ = not available
For SAR aircraft, the use of this field may be decided by the responsible administration</td>
  </tr>
  <tr>
    <td>DTE</td>
    <td>1</td>
    <td>Data terminal equipment (DTE) ready (0 = available, 1 = not available = default) (see § 3.3.1)</td>
  </tr>
  <tr>
    <td>Spare</td>
    <td>1</td>
    <td>Spare. Not used. Should be set to zero. Reserved for future use</td>
  </tr>
  <tr>
    <td>Number of bits</td>
    <td>424</td>
    <td>Occupies 2 slots</td>
  </tr>
</table>


# Table 53: Identifiers to be used by ships to report their type

<table>
  <caption>Table 53: Identifiers to be used by ships to report their type (p. 114)</caption>
  <tr>
    <th>Identifier No.</th>
    <th>Special craft</th>
  </tr>
  <tr>
    <td>50</td>
    <td>Pilot vessel</td>
  </tr>
  <tr>
    <td>51</td>
    <td>Search and rescue vessels</td>
  </tr>
  <tr>
    <td>52</td>
    <td>Tugs</td>
  </tr>
  <tr>
    <td>53</td>
    <td>Port tenders</td>
  </tr>
  <tr>
    <td>54</td>
    <td>Vessels with anti-pollution facilities or equipment</td>
  </tr>
  <tr>
    <td>55</td>
    <td>Law enforcement vessels</td>
  </tr>
  <tr>
    <td>56</td>
    <td>Spare – for assignments to local vessels</td>
  </tr>
  <tr>
    <td>57</td>
    <td>Spare – for assignments to local vessels</td>
  </tr>
  <tr>
    <td>58</td>
    <td>Medical transports (as defined in the 1949 Geneva Conventions and Additional Protocols)</td>
  </tr>
  <tr>
    <td>59</td>
    <td>Ships and aircraft of States not parties to an armed conflict</td>
  </tr>
</table>


<table>
<caption>Table 53 (continued): Other ships (p. 114)</caption>
  <tr>
    <th>First digit</th>
    <th>Second digit</th>
    <th>First digit</th>
    <th>Second digit</th>
  </tr>
  <tr>
    <td>1 – Reserved for future use</td>
    <td>0 – All ships of this type</td>
    <td>&mdash;</td>
    <td>0 – Fishing</td>
  </tr>
  <tr>
    <td>2 – WIG</td>
    <td>1 – Carrying DG, HS, or MP, IMO hazard or pollutant category X</td>
    <td>&mdash;</td>
    <td>1 – Towing</td>
  </tr>
  <tr>
    <td>3 – See right column</td>
    <td>2 – Carrying DG, HS, or MP, IMO hazard or pollutant category Y</td>
    <td>3 – Vessel</td>
    <td>2 – Towing and length of the tow exceeds 200 m or breadth exceeds 25 m</td>
  </tr>
  <tr>
    <td>4 – HSC</td>
    <td>3 – Carrying DG, HS, or MP, IMO hazard or pollutant category Z</td>
    <td>&mdash;</td>
    <td>3 – Engaged in dredging or underwater operations</td>
  </tr>
  <tr>
    <td>5 – See above</td>
    <td>4 – Carrying DG, HS, or MP, IMO hazard or pollutant category OS</td>
    <td>&mdash;</td>
    <td>4 – Engaged in diving operations</td>
  </tr>
  <tr>
    <td>5 – Reserved for future use</td>
    <td>&mdash;</td>
    <td>5 – Engaged in military operations</td>
  </tr>
  <tr>
    <td>6 – Passenger ships</td>
    <td>6 – Reserved for future use</td>
    <td>&mdash;</td>
    <td>6 – Sailing</td>
  </tr>
  <tr>
    <td>7 – Cargo ships</td>
    <td>7 – Reserved for future use</td>
    <td>&mdash;</td>
    <td>7 – Pleasure craft</td>
  </tr>
  <tr>
    <td>8 – Tanker(s)</td>
    <td>8 – Reserved for future use</td>
    <td>&mdash;</td>
    <td>8 – Reserved for future use</td>
  </tr>
  <tr>
    <td>9 – Other types of ship</td>
    <td>9 – No additional information</td>
    <td>&mdash;</td>
    <td>9 – Reserved for future use</td>
  </tr>
</table>


# Table 70: Standard class B equipment position report

<table>
  <caption>Table 70: Standard class B equipment position report (pp. 126-127)</caption>
  <thead>
    <tr>
      <th>Parameter</th>
      <th>Number of bits</th>
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
      <td>Used by the repeater to indicate how many times a message has been repeated. See § 4.6.1, Annex 2; 0-3; 0 = default; 3 = do not repeat anymore; should be 0 for "CS" transmissions</td>
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
      <td>1 = high (≤10 m)<br>0 = low (>10 m)<br>0 = default<br>The PA flag should be determined in accordance with Table 50</td>
    </tr>
    <tr>
      <td>Longitude</td>
      <td>28</td>
      <td>Longitude in 1/10 000 min (±180°, East = positive (as per 2’s complement), West = negative (as per 2’s complement);<br>181° (6791AC0h) = not available = default)</td>
    </tr>
    <tr>
      <td>Latitude</td>
      <td>27</td>
      <td>Latitude in 1/10 000 min (±90°, North = positive (as per 2’s complement), South = negative (as per 2’s complement);<br>91 = (3412140h) = not available = default)</td>
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
      <td>UTC second when the report was generated by the EPFS (0-59 or 60 if time stamp is not available, which should also be the default value or 61 if positioning system is in manual input mode or 62 if electronic position fixing system operates in estimated (dead reckoning) mode or 63 if the positioning system is inoperative)<br>61, 62, 63 are not used by "CS" AIS</td>
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
      <td>0 = Capable of operating over the upper 525 kHz band of the marine band<br>1 = Capable of operating over the whole marine band (irrelevant if "Class B Message 22 flag" is 0)</td>
    </tr>
    <tr>
      <td>Class B Message 22 flag</td>
      <td>1</td>
      <td>0 = No frequency management via Message 22, operating on AIS 1, AIS 2 only<br>1 = Frequency management via Message 22</td>
    </tr>
    <tr>
      <td>Mode flag</td>
      <td>1</td>
      <td>0 = Station operating in autonomous and continuous mode = default<br>1 = Station operating in assigned mode</td>
    </tr>
    <tr>
      <td>RAIM-flag</td>
      <td>1</td>
      <td>RAIM (Receiver autonomous integrity monitoring) flag of electronic position fixing device; 0 = RAIM not in use = default; 1 = RAIM in use see Table 50</td>
    </tr>
    <tr>
      <td>Communication state selector flag</td>
      <td>1</td>
      <td>0 = SOTDMA communication state follows<br>1 = ITDMA communication state follows (always "1" for Class-B "CS")</td>
    </tr>
    <tr>
      <td>Communication state</td>
      <td>19</td>
      <td>SOTDMA communication state (see § 3.3.7.2.1, Annex 2), if communication state selector flag is set to 0, or ITDMA communication state (see § 3.3.7.3.2, Annex 2), if communication state selector flag is set to 1<br>Because Class B "CS" does not use any Communication State information, this field should be filled with the following value: 1100000000000000110</td>
    </tr>
    <tr>
      <td>Number of bits</td>
      <td>168</td>
      <td>Occupies one slot</td>
    </tr>
  </tbody>
</table>

# Table 71: Extended class B equipment position report

<table>
  <caption>Table 71: Extended class B equipment position report (pages 127-128)</caption>
  <tr>
    <th>Parameter</th>
    <th>Number of bits</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>Message ID</td>
    <td>6</td>
    <td>Identifier for Message 19; always 19</td>
  </tr>
  <tr>
    <td>Repeat indicator</td>
    <td>2</td>
    <td>Used by the repeater to indicate how many times a message has been repeated. See § 4.6.1, Annex 2; 0-3; 0 = default; 3 = do not repeat any more</td>
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
    <td>Speed over ground in 1/10 knot steps (0-102.2 knots)
1 023 = not available, 1 022 = 102.2 knots or higher</td>
  </tr>
  <tr>
    <td>Position accuracy</td>
    <td>1</td>
    <td>1 = high (≤10 m)
0 = low (>10 m)
0 = default
The PA flag should be determined in accordance with Table 50</td>
  </tr>
  <tr>
    <td>Longitude</td>
    <td>28</td>
    <td>Longitude in 1/10 000 min (±180°, East = positive (as per 2’s complement), West = negative (as per 2’s complement);
181° (6791AC0h) = not available = default)</td>
  </tr>
  <tr>
    <td>Latitude</td>
    <td>27</td>
    <td>Latitude in 1/10 000 min (±90°, North = positive (as per 2’s complement), South = negative (as per 2’s complement);
91 = (3412140h) = not available = default)</td>
  </tr>
  <tr>
    <td>COG</td>
    <td>12</td>
    <td>Course over ground in 1/10 = (0-3 599). 3 600 (E10h) = not available = default; 3 601-4 095 should not be used</td>
  </tr>
  <tr>
    <td>True heading</td>
    <td>9</td>
    <td>Degrees (0-359) (511 indicates not available = default)</td>
  </tr>
  <tr>
    <td>Time stamp</td>
    <td>6</td>
    <td>UTC second when the report was generated by the EPFS (0-59 or 60) if time stamp is not available, which should also be the default value or 61 if positioning system is in manual input mode or 62 if electronic position fixing system operates in estimated (dead reckoning) mode, or 63 if the positioning system is inoperative)</td>
  </tr>
  <tr>
    <td>Spare</td>
    <td>4</td>
    <td>Not used. Should be set to zero. Reserved for future use</td>
  </tr>
  <tr>
    <td>Name</td>
    <td>120</td>
    <td>Maximum 20 characters 6-bit ASCII, as defined in Table 47. @@@@@@@@@@@@@@@@@@@@ = not available = default</td>
  </tr>
  <tr>
    <td>Type of ship and cargo type</td>
    <td>8</td>
    <td>0 = not available or no ship = default
1-99 = as defined in § 3.3.2
100-199 = reserved, for regional use
200-255 = reserved, for future use</td>
  </tr>
  <tr>
    <td>Dimension of ship/reference for position</td>
    <td>30</td>
    <td>Dimensions of ship in meters and reference point for reported position (see Fig. 41 and § 3.3.3)</td>
  </tr>
  <tr>
    <td>Type of electronic position fixing device</td>
    <td>4</td>
    <td>0 = Undefined (default); 1 = GPS, 2 = GLONASS, 3 = combined GPS/GLONASS, 4 = Loran-C, 5 = Chayka, 6 = integrated navigation system, 7 = surveyed; 8 = Galileo, 9-14 = not used, 15 = internal GNSS</td>
  </tr>
  <tr>
    <td>RAIM-flag</td>
    <td>1</td>
    <td>RAIM (Receiver autonomous integrity monitoring) flag of electronic position fixing device; 0 = RAIM not in use = default; 1 = RAIM in use - see Table 50</td>
  </tr>
  <tr>
    <td>DTE</td>
    <td>1</td>
    <td>Data terminal ready (0 = available 1 = not available; = default) (see § 3.3.1)</td>
  </tr>
  <tr>
    <td>Assigned mode flag</td>
    <td>1</td>
    <td>0 = Station operating in autonomous and continuous mode = default, 1 = Station operating in assigned mode</td>
  </tr>
  <tr>
    <td>Spare</td>
    <td>4</td>
    <td>Not used. Should be set to zero. Reserved for future use</td>
  </tr>
  <tr>
    <td>Number of bits</td>
    <td>312</td>
    <td>Occupies two slots</td>
  </tr>
</table>
