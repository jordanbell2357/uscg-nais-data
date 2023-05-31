https://www3.tuhh.de/sts/hoou/data-quality-explored/index.html

https://www3.tuhh.de/sts/hoou/data-quality-explored/A-1-1-AIS-modifications.html

> The data is missing information to be able to work with separated trips: it contains only the AIS messages.
>
> The first step is to create the attribute `TripID`. For that, we group the AIS messages according to their `MMSI`, to make sure that they belong to the same ship. As one ship might travel several times in the area on several days, we split the trips that are recorded on a different day.
>
> Once we have the attribute `TripID`, we can sort the values of each trip according to their timestamp, and collect the departure and arrival information (time, latitude and longitude). This information is saved in the attributes `DepTime`, `ArrTime`, `DepLat`, `DepLon`, `ArrLat`, `ArrLon`.
>
> Finally, we use the latitude and longitude information to retrieve the country and city of departure and arrival. This creates the attributes `DepCountry`, `DepCity`, `ArrCountry`, `ArrCity`.
>
> From this dynamic dataset, we create the static dataset: we retrieve the static information of each trip and create a new row for each trip in the static dataset. We simply reuse the information for the attributes `TripID`, `MMSI`, `VesselName`, `IMO`, `CallSign`, `VesselType`, `Length`, `Width`, `Draft`, `Cargo`, `DepTime`, `ArrTime`, `DepLat`, `DepLon`, `ArrLat`, `ArrLon`, `DepCountry`, `DepCity`, `ArrCountry`, `ArrCity`.
>
> For the attributes `MeanSOG` and `Duration`, we calculate them afterwards. `MeanSOG` is created by taking the mean of the `SOG` attribute for all the AIS messages of the trip. `Duration` is simply the difference between `ArrTime` and `DepTime`.
