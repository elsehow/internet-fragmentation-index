# Undersea cables

## Background

98% of traffic on the Internet travels through cables that run deep under the ocean. These cables are the physical material through which data flows through terrestrial space. 

As I’ve [written before](https://www.oecd-forum.org/posts/fragility-digitally-the-internet-during-world-war), during wartime, attacks on submarine internet infrastructure could cause considerable chaos. One way of thinking about this situation is this: different countries have a different level of reliance on other countries in connecting them to the global internet. Some countries, like the United States, have rich and robust connections globally. Any single cable clip would be relatively minor. Other countries, like Tonga, are connected to the rest of the world by only one cable. An outage in that cable can ([and does](https://www.bbc.com/news/world-asia-60458303)) disconnect Tonga from the world.

## Our metric

Fragmentation is at its lowest when all countries have a relatively even degree of reliance on one another---when each country is about as robust against (or vulnerable to) a cable clipping attack as the next one. Fragmentation is at its highest (1) when all countries rely on one single country to deliver the internet to them.  

We understand undersea cables as a network, where countries are nodes and cables are edges. We compute the betweenness centrality of all nodes in the network and take the gini coefficient of betweeness centralities to see how (un)equally distributed the score is across countries.

## Limitations

### Data limitations
- These data do not include terrestrial cables, which hinder our ability to consider connectivity of landlocked countries.
	-> Try integrating [ITU's terrestrial cable data](https://bbmaps.itu.int/bbmaps/)

### Metric limitations
An important consideration in undersea cables, one not captured by our metric, is which entities own them. There is some amount of concentration when hyperscalers build and own their cable infrastructure.  For example, low fragmentation might be when subsea cables are owned and operated by multiple entities. High fragmentation might be when subsea cables are operated by a single entity.  A metric like "number of operators per km" might be a reasonable proxy.

The best metric might be a combination of these these two ideas: fragmentation is low when everyone's cables are owned by lots of parties.  Say you're an island country with two cables, each owned by one person. Say another island country has one cable owned by two people. These two countries are arguably in a pretty similar position to each other from the perspective of their fragility.   Low fragmentation is homogeneity in some metric that takes both betweenness centrality and multiparty cable ownership into account.  

We have the owners of cables in `data/json/cable`. However, we can't assume multiple parties are all independent. For example, three companies, all domiciled in China, may be no better than one company from the perspective of a nation's security interests. Corporate domicile/ownership is something to untangle in future work.