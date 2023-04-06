# Per-country and global website popularity

CrUX data on the top ranked websites per-country and worldwide.

Forked From [zakird/curx-top-lists](https://github.com/zakird/crux-top-lists/).

## Collect data

Get your [Google BigQuery admin credentials](https://www.progress.com/tutorials/jdbc/a-complete-guide-for-google-bigquery-authentication). Place the key .json in a folder (e.g., `creds`).

From your nix-shell (see [[README]]),  this command fetches the top 100,000 websites both per-country and globally for all one-month periods (YYYYMM) in the dataset:

```sh
python3 cruxdownloader data/ creds/my-bigquery-creds.json 
```

## Dataset format

The data are tarred CSV files named `YYYMM`, which denotes the year and month of the measurement period. 

CSV format:

- `origin`: The hostname of the domain in question
- `rank`: One of `1000`, `10000`, `1000000`, indicating the top n websites in which that host is ranked. (Note: there is no ranking within, for example, the top 1000; within a rank, the hostnames are unordered sets).

Datasets:

- `data/global/YYYYMM.tar.gz`. The global ranking of all websites.
- `data/country/YYYYMM.tar.gz`. Per-country rankings (an additional `country_code` field marks the Alpha-2 country code for the observation).


## Limitations

The CrUX top sites attributed to China may be skewed, not representative of the
true distribution of Chinese browsing data. From
[zakird/curx-top-lists](https://github.com/zakird/crux-top-lists/):

> The CrUX dataset is based on data collected from Google Chrome and is thus
biased away from countries with limited Chrome usage (e.g., China). If you're
specifically interested in looking at domain popularity in China, consider
[Building an Open, Robust, and Stable Voting-Based Domain Top
List](https://faculty.cc.gatech.edu/~frankli/papers/xie_usenix2022.pdf), which
is based on data collected from 114DNS, a large DNS provider in China.
of lists of top websites. The second is a study on web browsing more broadly.

## Data sources & references

From [zakird/curx-top-lists](https://github.com/zakird/crux-top-lists/):

> The data  in this repo is all publicly posted by Google to their
> CrUX dataset in Google BigQuery. This is simply a cache of that public data.
> Many of the arguments in this README are based
> on two recent research papers. The first describes how we evaluated the accuracy
> of lists of top websites. The second is a study on web browsing more broadly.
> 
> **[Toppling Top Lists: Evaluating the Accuracy of Popular Website Lists](https://zakird.com/papers/toplists.pdf)**<br/>
> Kimberly Ruth, Deepak Kumar, Brandon Wang, Luke Valenta, and Zakir Durumeric<br/>
> _ACM Internet Measurement Conference_ (IMC), October 2022
> 
> **[A World Wide View of Browsing the World Wide Web](https://zakird.com/papers/browsing.pdf)**<br/>
> Kimberly Ruth, Aurore Fass, Jonathan Azose, Mark Pearson, Emma Thomas, Caitlin Sadowski, and Zakir Durumeric<br/>
> _ACM Internet Measurement Conference_ (IMC), October 2022
