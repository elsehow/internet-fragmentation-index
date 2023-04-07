# Undersea cable data

Data about undersea cable connectivity.

## Collect data
Open `cables-to-network.ipynb` and follow the instructions to collect data from our datasource and/or to reproduce our graphs from those raw data.

## Dataset format
- `json/`: JSON data describing attributes of the cable system as a whole
- `json/cable`: Per-cable data describing cable owners and landing points.
- `graphs/`: These graphs (networks) are the result of this notebook's analysis. We interpret the json data to produce a graph describing connectivity of undersea cables, in which nations are nodes and undersea cables are edges.

## Limitations

- These data only show cables that are publicly known. Private cables may not appear in this dataset. See Bischoff et al., 2018.
- These data only pertain to undersea cables. Many landlocked countries rely on terrestrial cables; many more countries have important reliance on international terrestrial cables over land borders (e.g.,  Ukraine; see [Limonier et al., 2021](https://firstmonday.org/ojs/index.php/fm/article/view/11700)).

## Data sources & references
- Data source: [Telegeography's SubmarineCableMap](https://www.submarinecablemap.com/)
- About the data source:  **[Untangling the world-wide mesh of undersea cables](https://dl.acm.org/doi/pdf/10.1145/3286062.3286074)**. Zachary S. Bischof, Romain Fontugne, and Fabián E. Bustamante. ACM Workshop on Hot Topics in Networks. 2018.

