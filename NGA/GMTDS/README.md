# GMTDS

https://msi.nga.mil/MiscProducts

FAQ
What is AIS data?

Automated Identification System (AIS) data is a system for automatically tracking nautical vessels using transceivers and is primarily used for collision avoidance. The transceivers broadcast a variety of data including position, vessel type, draft, and many other fields of information. These broadcasted messages are then captured by space-based satellites or land-based antennas and transformed into a variety of messages that can be used for different purposes.

What are the sources of the Global Maritime Traffic AIS data?

Global Maritime Traffic is unique in that we combine multiple commercially available and open source AIS data repositories to process our analytics. Due to licensing restrictions, we can not directly comment on the specific sources of the AIS data.

How trustworthy is AIS data?

AIS messages have automated and human entered portions of the message. Typically, the positional location of the vast majority of AIS transponders is accurate. We put our location data through a processing methodology to remove bad data. Human entered data like ship type, draf, and navigation status may contain harder to detect errors. For example, Navigation Status was excluded as a filter type from GMTDS due to the large amount of errors in the reported AIS messages.

How do I cite the GMTDS service or data in an academic paper or on an external website?

Authorized downloads from GMTDS are subject to the terms of the Creative Commons Attribution 4.0 International Public License and shall be attributed to: Global Maritime Traffic Density Service (GTMDS) retrieved from GlobalMaritimeTraffic.org, a service of MapLarge 2021 <https://www.globalmaritimetraffic.org>

How much AIS data is included in GMTDS?

There are roughly 100 billion AIS messages that were processed by GTMDS resulting in over 500 billion density raster cells being available for analysis. The GTMDS monthly densities start in April 2011 and continue through typically the past couple of months. New data is processed and added on a regular basis.

What is the underlying technology for GMTDS?

The GMTDS architecture is supported by the MapLarge Application Development Platform. There is an internal Spatial Data Infrastructure (SDI) which is responsible for processing the raw AIS data and generating the rasters. Then there is the external SDI which is where the final density rasters are hosted for community access. Additionally, using the MapLarge Application Development Platform, the GMTDS application was build using modular components.

What AIS messages are included in the Ship Type categories?

Ship Type	Ship Type AIS Code Values
Cargo Ships	70-79
Fishing	30
Ice Breakers	Hand Curated List of Named Icebreaker Vessels from this site:
http://baltice.org/app/static/pdf/operational_icebreakers.pdf
Non-commercial Ships	34, 35, 51, 54, 55, 58, 59
Passenger Ships	36, 37, 60-69
Service Ships	31-33, 50, 52, 53
Tanker	80-89
All Others	Ship types not specified above
Unknown	No ship type value was provided in the data
How is the Ship Draft category determined?

Ship Draft is a reported attribute in the AIS message. We process this data exactly as it comes in for each AIS message broadcast.

How is the Loitering category determined?

Loitering is defined as a ship spending more than 6 hours within a 1km2 area. If that is determined to be true, then that density raster will be displayed on the map. This layer essentially shows areas where at least 1 vessel spend more than 6 hours in a small area.