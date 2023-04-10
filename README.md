# Internet Fragmentation Index

## Run

First, install the [Nix package manager](https://nixos.org/download.html).

Then, in the root directory:

``` sh
nix-shell shell.nix
```

This will open a shell with all dependencies installed.

Navigate to any metric's README to see how to replicate it.

## Project structure

- `layers/`
  - `[layer-name]`
      - `[metric-name]`
        - `README.md`
          - How to reproduce the metric
          - About the metric
          - Limitations
        - `[metric-name].csv`
        - `[metric-name].csv`
        - (If required) Misc. post-processing CSVs.
        - `data/`
          - `README.md`
            - About the data source
            - How to reproduce data collection
            - Limitations of the data source
            - The data themselves (space permitting)
- `index/`
	- `index.md`: This is the primary public-facing page.
	- `index.ipynb`: This notebook uses metrics from `layers/` to produce assets for `index.md`.