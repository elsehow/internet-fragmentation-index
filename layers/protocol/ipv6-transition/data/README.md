# IPv6 transition data

Data about the ongoing transition from IPv6 to IPv5.

## Collect data

Head to https://www.google.com/intl/en/ipv6/statistics.html#tab=per-country-ipv6-adoption and open up the JavaScript console.

Run:

``` javascript
csv = googleIPv6AdoptionData
    .map(row => row.map(value => `${value}`)
    .join(","))
    .join("\n");

function copyTextToClipboard(text) {
    const textarea = document.createElement('textarea');
    textarea.value = text;
    textarea.style.position = 'fixed';
    textarea.style.opacity = '0';
    document.body.appendChild(textarea);
    textarea.focus();
    textarea.select();
    
    try {
        document.execCommand('copy');
        console.log("CSV data copied to clipboard.");
    } catch (err) {
        console.error("Failed to copy CSV data to clipboard.", err);
    }
    
    document.body.removeChild(textarea);
}

copyTextToClipboard(csv);
```


Copy the resulting string into the cell below.


## Dataset format

`data.csv` is a single string representing a CSV file. The CSV's columns are:

- 0: Month (0-indexed; e.g., `8` is September).
- 1: Day of month (1-indexed; e.g., `31` is the 31st).
- Total adoption: The proportion of all traffic connecting via IPv6, including via 6to4/Teredo.
- Native: The proportion of all traffic connecting via native IPv6.

## Data sources & references

- Data source: [Google IPv6 Adoption](https://www.google.com/intl/en/ipv6/statistics.html)

- Methodology: **[Evaluating IPv6 Adoption in the Internet](https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/36240.pdf)**. Lorenzo Colitti, Steinar H. Gunderson, Erik Kline, and Tiziana Refice. Passive and Active Measurement: 11th International Conference, 2010.
