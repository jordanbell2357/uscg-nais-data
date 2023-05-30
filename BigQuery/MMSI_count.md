```sql
SELECT MMSI, COUNT(MMSI) AS MMSI_count FROM `ais-data-385301.uscg.nais` GROUP BY MMSI ORDER BY COUNT(MMSI) DESC LIMIT 20;
```
```csv
MMSI	MMSI_count
367458840	54611
368179250	54457
366996610	52871
366995670	52854
367005550	52552
368124510	52496
367778010	52487
367314530	52280
361111111	52083
368039230	51976
367373000	51972
367433770	51949
368136260	51915
367777460	51910
367475510	51886
338185000	51848
366264360	51823
367158710	51782
303308000	51777
367739690	51685
```

We can search by MMSI on

https://www.navcen.uscg.gov/ais-vessel-information-verification-service

and

https://www.itu.int/mmsapp/ShipStation/list

For instance, MMSI 367458840 is on the first and not the second, and in the first its entry is

```csv
"SearchID","ID Discrepancies","Static Discrepancies","Name","Call Sign","MMSI","IMO","Standard Length","ANT Distance A","ANT Distance B","ANT Distance C","ANT Distance D","Draft","Ship Type CD","Last Reported Date","Ship Description","Positioning System","Vessel Flag","Errors?","Official Name","Official Call Sign","Official MMSI","Official IMO","US Official No","Vessel Owner"
"9591","CLSN","MEASURE LENGTH IN M NOT FT/ZERO DRAFT","OSPREY","WDL6367","367458840","0","15.24","50","0","0","12","0.0","60","23-May-2023 11:56:41","Passenger Ship","Class A","US","1","OSPREY","WCZ9995","367458840","0","1091215","STASINOS MARINE"
```
