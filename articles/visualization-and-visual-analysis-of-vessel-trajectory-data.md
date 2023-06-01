---
layout: post
title: "Visualization and visual analysis of vessel trajectory data: A survey"
topic: readings
---

Liu, H., Chen, X., Wang, Y., Zhang, B., Chen, Y., Zhao, Y., and Zhou, F.
*Visualization and visual analysis of vessel trajectory data: A survey*. Visual Informatics **5** (2021), no. 4, 1-10. doi: [10.1016/j.visinf.2021.10.002](https://doi.org/10.1016/j.visinf.2021.10.002)

In this study, we searched through papers related to vessel trajectory visualization and visual analysis for the last 20 years. First,
we introduced commonly used vessel trajectory data sets and
summarized main operations in vessel trajectory data preprocessing. Then, we investigated the related work from two aspects,
namely visualization techniques and visual analysis approaches.
In the visualization aspect, we summarized three important types
of visualizations, namely density map, space–time cube, and relation graph, which have been largely used in visually presenting
vessel trajectories. In the aspect of visual analysis, we classified
existing approaches into three categories according to the focusing analytical tasks, namely spatial character analysis, temporal
character analysis, and vessel behavior pattern analysis. Finally,
we prospected the remaining challenges and developing trends of this area.

---

**Trajectory cleaning**. Data quality problems commonly exist in
raw vessel trajectory data because of device failures, transmission
errors, and inappropriate sampling (Kandel et al., 2011). Therefore, data users need to use a combination of methods to improve
the quality of data (Meratnia and By, 2004). For example, using a
uniqueness examination to eliminate data duplications (Zhao and
Shi, 2019), using medians of adjacent data records to fill missing
data (Schuessler and Axhausen, 2009), and using Kalman filtering
to erase noisy data (Barrios et al., 2006; Hightower and Borriello,
2004).

**Trajectory aggregation.** Trajectory
aggregation
refers
to
grouping trajectories by similar data features or behavior patterns. Clustering is the mainstream technique in trajectory aggregation.
How to measure the similarity between trajectories
is the core of trajectory clustering (Fang et al., 2012). According to the differences in similarity measurements, trajectory
clustering algorithms can be divided into distance-based, density-
based, and statistics-based. The distance-based trajectory clustering algorithms commonly use Hausdorff distance (Huttenlocher
et al., 1993), longest common sub-sequence distance (Stern et al.,
2013), and edit distance (Yuan and Raubal, 2014) for similarity
measurements. These measures are simple to calculate and easy
to implement but generally result in the loss of important local
features. The density-based algorithms identify trajectory clusters
based on the density distribution of trajectories (Hinneburg and
Keim, 1999). Therefore, the advantage is that it can discover
any shape of vessel trajectory clusters and has strong robustness
to abnormal trajectories. Most classic density-based clustering
algorithms, such as DBSCAN (Ester et al., 1996) and OPTICS (Ying
and Shwu, 2008), are suitable for vessel trajectory clustering.
However, when the density distribution of vessel trajectories
is uneven, the density-based clustering is usually not satisfied.
Statistics-based algorithms use statistical models, such as the
hidden Markov model (Peel and Good, 2011) and the Gaussian
Mixture Model (GMM) (Laxhammar et al., 2009), to identify the
similarities between vessel trajectories. The advantage of this
method is that it can give a result with probability for the
vessel’s main route. However, statistical models generally have
the disadvantage of high computational complexity.

---

(3) KDE-based density map visualization.
Kernel density estimation (KDE) is a commonly used method
for estimating the data probability density distribution independent of the grid-division step or any prior knowledge on a target
data distribution (Lampe and Hauser, 2011). A variety of kernel
functions (e.g., uniform kernel function and radial basis function)
can be used in KDE for density estimation in diverse scenarios.
Benefiting from the advantages of KDE-based density estimation,
KDE-based density map is the dominant means for visualizing
the density distribution of vessels or vessel trajectories (Lampe
and Hauser, 2011; Wu et al., 2017). Fig. 1(c) shows a typical
KDE-based vessel trajectory density map with a kernel of radial
basis function (Willems et al., 2009) in which yellow areas have
low-density values and red areas have high-density values. This
density map depicts the global structure of vessel trajectories
and highlights the anchor zones (stopping areas) and sea lanes
(common routes) with high-density values.

Researchers have proposed many methods to improve the
visual representation ability of KDE-based density maps. For example, Scheepens et al. (2011) presented a set of KDE-based
density maps with multiple attributes. In Fig. 1(d), the temporal
information of trajectories is considered and the vessel trajectory
density distributions during the day and night are represented by
blue and yellow, respectively. From the map, the differences between the distributions of vessel trajectories during the nighttime
and the daytime can be easily observed (Willems et al., 2009). In
Fig. 1(e), the spatial distribution of passenger vessels (turquoise),
cargo vessels (orange), and tanker vessels (green) are visualized
in a composite density map by considering the types of vessels
(Scheepens et al., 2011).

Correlation analysis plays a crucial role in vessel trajectory
analysis, such as exploring relationships between vessel speeds
and weather conditions and investigating freight relationships
between ports. Therefore, many visualizations tailored for relationship representation have often been used in vessel trajectory analysis. Parallel coordinates plot (PCP) is a classic multi-
dimensional data visualization method (Pack et al., 2009; Zhao
et al., 2018). PCP can help users in exploring the relationships
between attributes of trajectory points and inner-connections
between vessel navigations and environmental conditions. For
example, Cong, L. et al. took vessel trajectory points as multi-
dimensional data, as shown in Fig. 3(a), and applied PCP to
analyze the relationships between vessel type, tonnage, speed,
and other attributes (Cong and Shu, 2017). Lundblad et al. used
PCP to analyze the relationships between voyages and weather
parameters (Lundblad et al., 2009). Flow maps and chords have
also been widely used for visualizing one-to-many or many-to-
many relationships (Koylu and Guo, 2017; Phan et al., 2005; Zhou
et al., 2019b). In maritime transport management, flow maps
and chords have been applied to analyze vessel transportation
networks, navigation cycles, and other valuable information for
maritime traffic management. For example, Fig. 3(b) shows a
global crude oil transportation network constructed using a flow
map (Peng et al., 2019). Fig. 3(c) shows the global shipping relationship between ports by using a chord diagram.

Vessel trajectory spatial character analysis refers to the use
of spatial analysis algorithms, statistical models, and interactive
analysis techniques to conduct an in-depth analysis of the spatial
characteristics of vessel trajectories. Spatial character analysis is
generally conducted from two perspectives: trajectory points and
trajectory routes. In this section, we introduce the existing works
from these two perspectives.

Analyzing spatial characters of vessel trajectories from the
point perspective focuses largely on identifying valuable way-
points and their distribution in a water area. Waypoints include
ports and anchorages (Liu et al., 2018). Ports are transportation
hubs for the safe entry and exit of vessels. Anchorages refer
to special water areas for vessels to berth and perform various
operations. These waypoints are important in maritime traffic
surveillance and safe navigation. For example, Zhang et al. (2019)
proposed a visual analysis system that utilizes vessel trajectory
data and accident data to improve traffic management at the
Singapore port, as shown in Fig. 4(a). The system applies a spatial
autocorrelation algorithm on the trajectory data to identify the
hotspots under a certain condition (e.g., speed or number of
trajectory points) at the port area. Then, it uses a heatmap and
OD matrix to visualize the hotspots. Users can interactively select
trajectories related to any accidents and modify the conditions
to observe the distribution of hotspots and obtain insights for
port traffic management. Willems et al. (2009) designed a visual analysis system to automatically identify and interactively
analyze anchor zones. They proposed a new KDE method that
introduces the speed information of trajectory points into the
density estimation to identify anchor zones. Fig. 4(b) shows the
new multi-scale density visualization that supports the color
encoding of density values based on a user-selected feature of
trajectory points, such as times of day, weather, or vessel types.
Users can compare the spatial distributions of anchor zones under
various conditions to facilitate the decision-making of safe anchor
zone selection.

A vessel route is the trajectory of a vessel from a certain
starting point to its destination (Tu et al., 2018). Analyzing the
spatial characteristics of vessel trajectories from the routing per-
spective is of great significance for vessel route choice and global
shipping network analysis (Xiao et al., 2020). Yan et al. (2020)
designed a visual analysis system for vessel route choice. They
first identified stops, turning points, and acceleration points in
each route by examining the features (e.g., speed and direction) of
trajectory points. Then, they viewed these points as the semantic
information of a route to construct a semantic vessel trip. Fig. 5(a)
shows that by visualizing semantic vessel trips and providing
interactions, the system enables users to select any semantic
points of interest for vessel route choice. Varlamis et al. (2021)
proposed a network-based approach for maritime traffic analysis.
They used an enhanced DBSCAN clustering algorithm to identify
waypoints (e.g., ports and intersections) from vessel trajectory
data. Then, they constructed a heterogeneous network in which
various types of waypoints are encoded by nodes with different
colors, as shown in Fig. 5(b). In this network, users can easily
master important shipping waypoints in the world and their
relations. Users can also observe the evolution of the network by
introducing time information. Tao et al. (2017) proposed a novel
approach for shipping route analysis that applied a higher-order
network model to describe the dependent relations among any
pair of origin–connection–destination ports, in which origin and
connection ports are named with first-order (FoN) and higher-
order nodes (HoN) respectively. Each port in the network can be
represented by its previously visited ports and the next possible
ports to visit. They also designed a visual analysis system to help
users understand and explore the global ocean shipping higher-
order network constructed from AIS data. As shown in Fig. 5(c), in
the system, multiple visualization views, including a map, node-
link diagram, hierarchical network graph (Zhao et al., 2020), and
chord views, are well-combined with rich interactions to support
interactive explorations of the network from multiple perspec-
tives. This approach is valuable for shipping route selection in
maritime traffic management.

**4.2. Vessel trajectory temporal character analysis** The temporal character analysis of vessel trajectories identifies
the dynamics and period patterns of vessel navigations. MVAP
(Lavigne et al., 2011) is a visual analysis system used in the
analysis of vessel trajectory dynamics, as shown in Fig. 6(a). The
system provides an animated map and timeline view to visualize
vessel trajectory data. Users can select a subset of trajectory data
by selecting periods or vessels and then observe the dynamic
navigation process of vessels. Kroodsma et al. (2018) designed a
visual analysis system for analyzing the period patterns of fishing
boat activities. The system uses convolutional neural network
models to identify fishing boat activities from AIS data, and then
applies four linked time-series data visualization views to present
the relationship between fishing boat activities and time. Fig. 6(b)
shows that fishing boat activities can be easily found because they
have obvious seasonal characteristics. Moreover, Lavigne et al.
(2011) designed a visual analysis system for maritime search and
rescue (SAR) operations. This system visualizes the SAR opera-
tions data and vessel trajectory data provided by the US Coast
Guard’s Ninth District and Atlantic Area Commands in the Great
Lakes region of the United States. Fig. 6(c) shows that security
events in the region have period characteristics.

**4.3. Vessel behavior pattern analysis** The analysis of vessel behaviors plays a critical role in marine
traffic management. Vessel behaviors can be divided into normal
and anomalous. Normal behaviors refer to the law of vessel
activities followed by most vessels. Many approaches mentioned
in the two previous sections involve normal behavior analysis.
Abnormal behaviors are behaviors with features or patterns that
deviate from normal or expected ones (Roy, 2008). In this section,
we divide vessel abnormal behaviors into natural environmental-
related (e.g., meteorological or oceanographic environmental),
also known as contextual anomalies, and human activities-related
(e.g., off-route, unexpected-speed, or U-shaped-turn), also known
as kinematic anomalies (Riveiro et al., 2018).
Vessel navigations are related closely to the context where
vessels move and operate. Severe weather conditions and extreme ocean currents pose risks to vessel navigations. SWIM
(Lundblad et al., 2009) is a visual analysis system for identifying
vessel contextual anomalies. First, it uses a geo-analytics visualization framework to integrate AIS data with weather data, as
shown in Fig. 7(a). Then, it uses a world map, PCP, and time
view to visualize the vessel voyages and weather conditions.
Users can interactively identify high-risk vessel activities appearing in severe weather areas. CRISIS (Soares et al., 2019) is
a vessel anomalies detection tool that integrates AIS data with
ocean streams data, as shown in Fig. 7(b). The system applies
knowledge query and knowledge reasoning technologies to automatically detect vessel behaviors, such as approaching areas of
swirl currents or heavy ices. The system also enables users to
set parameters, such as speed, weather, and ice, and interactively
identify contextual anomalies.

Maritime traffic management has focused considerable attention on the kinematic characteristics of vessels. Abnormal
behaviors or safety risks of vessel navigations usually have certain
characteristics in their dynamics, such as paths that deviate from
normal shipping routes (Anneken et al., 2015), abnormally high
or low speeds (Laxhammar, 2008), instantaneous stops, and U-
shaped-turns (Patroumpas et al., 2017). TraSeer (Wang et al.,
2017) is a visual analysis system for detecting abnormal paths.
The system uses an improved density distribution statistical algorithm for abnormal path identification. Fig. 8(a) shows the system
using multiple visualization views to present abnormal paths and
provide a basis for decision-making for latent illegal activity discovery. As Fig. 8(b) shows, Wang et al. (2020) used the Distance
to Closest Point of Approach (DCPA) to calculate a DCPA matrix
and applied a KDE method to calculate the trajectory distribution
of high- or low-speed vessels. Then, they designed a multi-view
visualization tool to present these calculation results to observe
the specific trajectory data. VISAD (Riveiro et al., 2009) is a highly
interactive visual analysis system. The system utilizes Gaussian
mixture models to extract the maximum and minimum speeds,
rotations, headings, and other variables from vessel trajectory
data. With expert knowledge, these variables can be combined
through a regular expression to detect complex anomalies (such
as piracy and smuggling situations). By highlighting the detected
anomalies on the self-organizing maps, as Fig. 8(c) shows, users
can participate in the detection procedure through interactive
means to assist the maritime management department in illegal
activity surveillance.
