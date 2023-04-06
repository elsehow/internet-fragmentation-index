# Content locality

## Background

The application layer uses data packets to produce applications and services, such as websites and apps.

People in different countries prefer different websites and apps. For this metric, we observe the degree to which website and app preferences have become more (or less) country-specific over time.

## Our metric

We look at the top 1000 websites in each country, and compare it to the global list of top 1000 websites.

Fragmentation is at its lowest (0) when all the world's countries have the same list of top websites as the world as a whole. Fragmentation is at its highest (1) when every country has a unique set of websites in its top list. 

We use Jaccard similarity to perform set-wise comparisons between each country and the global list, then take the mean of all Jaccard similarities within a given month to produce a whole-world metric.

## Limitations

### Data limitations
See: [[layers/application/content-locality/data/README#Limitations]]

### Metric limitations
- Some websites are owned by the same entity, but have different hostnames (`amazon.ca` vs `amazon.com`). These are counted as separate websites in our analysis. 
	- Arguably, this is appropriate, as these websites tend to have different TLDs for a reason: they display differnet langauges, obey different privacy laws, stock different products, etc.
- The global average is skewed toward highly-populated internet-using countries. That means larger, more high-connectivity countries have a bigger influence on "normal" browsing behavior than smaller, low-connectivity countries. 
	- While this strategy correctly captures the descriptive "norm" of the web, it is important to remember that fragmentation may occur more, and less Western countries are becoming connected to the internet, and viewing differnet hostnames. This is perhaps preferable to people in the Global South only being able to connect to Facebook (see: Facebook Basics).