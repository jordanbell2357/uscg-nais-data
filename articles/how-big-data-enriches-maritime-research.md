---
layout: post
title: How big data enriches maritime research (Transport Reviews, 2019)
topic: readings
---

Yang, D., Wu, L., Wang, S., Jia, H., & Li, K. X. (2019). *How big data enriches maritime research – a critical review of Automatic Identification System (AIS) data applications*. Transport Reviews **39**, no. 6, 755-773. doi: [10.1080/01441647.2019.1649315](https://doi.org/10.1080/01441647.2019.1649315)

pp. 3-4:

> AIS was developed in the 1990s, with the primary goal of preventing ship collisions and
> enhancing navigation safety. Through the use of VHF, ships equipped with AIS can broadcast
> and receive messages to and from other ships or coastal authorities that are also
> equipped with AIS. The AIS enables ships and coastal authorities to communicate with
> one another over a long distance. The International Maritime Organization (IMO) requires
> all international voyage ships with a gross tonnage above 300, and all passenger ships, to
> be equipped with an AIS transmitter (IALA, 2004). In addition to the IMO, governments and
> other authorities in different nations enforce AIS applications in ships registered with them
> to improve safety and security.
>
> The AIS transceivers are of two types (Classes A and B), having different numbers of
> reported data fields and reporting frequencies. The information broadcast by a ship’s
> AIS transceiver (Class A) can be grouped into 11 data fields, which can be further classified
> into 3 types, namely, static information, dynamic information, and voyage-related information.
> Dynamic information is automatically transmitted by a Class A AIS transceiver
> every 2–10 s, depending on the ship’s speed while it is underway, and every 3 min
> while it is anchored. At the same time, a Class A AIS transceiver’s interval between
> broadcasting static and voyage-related information is 6 min, regardless of navigational status.
> Class B transponders transmit a reduced set of data when compared with Class A transponders,
> omitting the IMO number, draught, destination, ETA, rate of turn, and navigational status.
> The reporting intervals from Class B transponders are also sparser when
> compared with those of Class A transponders, being a minimum of 5 s. Table 2 provides
> a detailed classification and description of these data fields.

<table>
  <caption>Table 2. Attributes of AIS data.</caption>
  <thead>
    <tr>
      <th>Data field</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>AIS identity and location</td>
      <td>Static</td>
      <td>Maritime Mobile Service Identity (MMSI) and the location of the system’s antenna on board</td>
    </tr>
    <tr>
      <td>Ship identity</td>
      <td>Static</td>
      <td>Ship name, IMO number, type, and call sign of the ship</td>
    </tr>
    <tr>
      <td>Ship size</td>
      <td>Static</td>
      <td>Length and width of the ship</td>
    </tr>
    <tr>
      <td>Ship position</td>
      <td>Dynamic</td>
      <td>Latitude and longitude (up to 0.0001 min accuracy)</td>
    </tr>
    <tr>
      <td>Speed</td>
      <td>Dynamic</td>
      <td>Ranging from 0 knot to 102 knots (0.1 knot resolution)</td>
    </tr>
    <tr>
      <td>Rate of turn</td>
      <td>Dynamic</td>
      <td>Right or left (ranging from 0 to 720° per minute)</td>
    </tr>
    <tr>
      <td>Navigation direction</td>
      <td>Dynamic</td>
      <td>Shipping course, heading, and bearing of the ship</td>
    </tr>
    <tr>
      <td>Time stamp</td>
      <td>Dynamic</td>
      <td>Second field of the UTC time when the subject data packet was generated</td>
    </tr>
    <tr>
      <td>Navigation status</td>
      <td>Dynamic</td>
      <td>Includes “at anchor,” “under way using engine(s),” and “not under command”</td>
    </tr>
    <tr>
      <td>Destination and ETA</td>
      <td>Voyage-related</td>
      <td>Destination port and the estimated time of arrival of the ship</td>
    </tr>
    <tr>
      <td>Draught</td>
      <td>Voyage-related</td>
      <td>Ranges from 0.1 m to 25.5 m</td>
    </tr>
  </tbody>
</table>

p. 6:

> One practical difficulty in applying AIS data is that the volume of data is extremely large,
> even for traffic data within a restricted geographical area covering a short period. For
> example, if AIS data is transmitted every 10 s, then a total of over 3 million records
> can be generated for a single ship in 1 year. The AIS data for 5000 ships over 3 years
> includes approximately 40 billion records. Therefore, AIS data mining is the research
> basis of many relevant studies. AIS was initially introduced to avoid ship collisions and
> improve navigation safety and this serves as the most basic application of AIS data.
> Because this part has already been reviewed by Tu et al. (2018), Sidibé and Shu (2017)
> and Zhao et al. (2014), in this section we only briefly explain the ideas and review the
> most up-to-date studies.

p. 7:

> Data mining is a knowledge extraction process based on raw data. Raw AIS data comprises
> a group of spatially and temporarily scattered points from which only limited information
> can be directly obtained. Therefore, data mining is significant for AIS data and provides the
> foundation for the majority of studies based on AIS data. The most common methods for
> processing and mining AIS data include trajectory extraction, trajectory clustering, and trajectory prediction.
>
> Trajectory extraction and clustering play a vital role in AIS data applications because
> they form the foundation of many further studies (including trajectory prediction and
> analysis, anomaly detection, and collision avoidance). Trajectory extraction refers to the
> construction of a ship’s trajectory based on the reported spatiotemporal sequence data.
> Trajectory clustering is based on the extraction results, which refers to the algorithms
> for grouping similar trajectories as a whole, thereby discovering common trajectories
> (Lee, Han, & Whang, 2007). Trajectory extraction and clustering using AIS data have elicited
> considerable attention in the literature, and the most recent explorations include those of
> Arguedas et al. (2018) and Wang, Zhu, Zhou, and Zhang (2017).
>
> Based on trajectory extraction and clustering, trajectory prediction can be carried out to
> predict a ship’s short-term future position and trajectory. Trajectory prediction enables
> navigators or coastal authorities to detect possible threats and take preventive actions
> as early as possible. A route prediction algorithm based on the Ornstein-Uhlenbeck stochastic process
> was proposed by Pallotta, Horn, Braca, and Bryan (2014), in which historical
> trajectories extracted from raw AIS data were used to estimate the parameters of the
> algorithm.

p. 11:

> With its increasing availability and completeness, AIS data can provide more detailed and
> timely trade statistics compared with traditional data sources (e.g. official customs data
> and port throughput data). Thus, Adland et al. (2017) adopted AIS data as an alternative
> statistic source for global trade analyses. An empirical study based on crude oil export statistics
> was conducted in their research. Jia, Lampe, Solteszova, and Strandenes (2017) proposed
> an algorithm for automatically generating seaborne transport pattern maps based
> on AIS data. The algorithm automatically detects major ports and zones and aggregates
> “real-time” trade flows among them. Prochazka and Adland (2017) used AIS data to
> analyse the location distribution of VLCC oil tankers on a global level.

p. 14

> Data mining focuses on deriving knowledge from raw AIS data. The most basic
> methods for AIS data mining are trajectory extraction, clustering, and prediction. Many
> applications, including anomaly detection (Zhen et al., 2017), maritime monitoring
> (Perera et al., 2012), and shipping density analyses (Kaluza et al., 2010), have been
> implemented based on trajectory extraction or prediction results. Visualisation techniques
> have also been utilised in AIS data studies to improve maritime monitoring (Pan et al.,
> 2012) or help analyse trade trends (Jia, Lampe, et al., 2017).
>
> The AIS provides data that records shipping activities with unparalleled high resolution.
> This data not only makes shipping activities more visible but also makes them more analysable.
> Many studies have developed methods of building evaluation indices to measure
> the performance of shipping activities by using AIS data. These methods and applications
> include ship domain construction (Hansen et al., 2013), collision risk assessment (Li et al.,
> 2018), ship emission inventory (Winther et al., 2014), oil spill risk assessment (Eide et al.,
> 2007), evaluation of green shipping policies (Jia, Adland, et al., 2017), and Arctic shipping
> trend analysis (Eguíluz et al., 2016).

p. 16:

> From the viewpoint of improving fleet productivity by way of increasing capacity utilisation,
> particularly in tramp shipping, choosing the port to which to reposition an empty
> ship is one of the most important decisions. This is both an operational issue faced by shipping
> companies and an interesting research topic. With the trend of increasing vessel sizes
> and orderbooks, it has been suggested that the world tanker fleet currently only has half of
> the productivity of that in the 1970s (Stopford, 2018). Low capacity utilisation resulting
> from a high proportion of ballast voyages and low load factor in laden voyages, may be
> one of the reasons. However, due to the lack of availability of cargo size data on actual
> vessel voyages, such line of research hardly exists. The draft information from AIS is a valu-
> able factor in estimating cargo sizes (Jia, Prakash, et al., 2018). Thus, the transparency provided
> by AIS data allows researchers to examine shipping market dynamics from the micro
> level, as opposed to relying on assumptions in the literature.