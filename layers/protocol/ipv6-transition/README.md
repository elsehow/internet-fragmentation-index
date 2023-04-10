The Internet Protocol (IP) assigns addresses that make computers reachable. The Internet's original IP version, IPv4, has already run out of addresses. A new version, IPv6, allows for more than enough addresses.

IPv4 and IPv6 are not directly interoperable. As this transition progresses, a [hodge-podge of mechanisms](https://en.wikipedia.org/wiki/IPv6_transition_mechanism#:~:text=An%20IPv6%20transition%20mechanism%20is,Protocol%20Version%206%20(IPv6).) maintains the illusion of a single, shared internet.

## Our metric

Fragmentation is at its lowest when everyone uses either IPv4 or IPv6. As IPv6 adoption ramps up, fragmentation increases until 50% of people use it. If adoption continues beyond 50%, fragmentation will begin to decrease again.

We use a combination of two quadratic functions to produce a score between 0 and 1, assuring the metric increases linearly up from 0-50% uptake and linearly down from 50-100%.

If a new protocol emerges (e.g., [NewIP](https://www.internetsociety.org/resources/doc/2022/huaweis-new-ip-proposal-faq/)), we will update this metric to account for it.

Note: Fragmentation is sometimes the least worst option. The internet needs to push through a period of fragmentation to swtich from IPv4 to IPv6; This fragmentation will, in the long-term, make the internet more stable and accessible for everyone.

## Limitations
- These data only cover server-side stats. A more robust metric would cover operator status.
	- -> [APNIC IPv6 stats](https://www.google.com/url?q=https://stats.labs.apnic.net/ipv6&sa=D&source=docs&ust=1681145402731986&usg=AOvVaw3lFi97EqocPXrzLNbX3syd)
	- -> Top X websites, see if they're IPv6 enabled.

### Data limitations
See: [[layers/protocol/ipv6-transition/data/README#Limitations]]
