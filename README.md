# Internet Fragmentation Index

## Develop

First, install the [Nix package manager](https://nixos.org/download.html).

Then, in the root directory:

``` sh
nix-shell shell.nix
```

Navigate to any metric to view a README about how to replicate it.

Project structure:

- `layers/`
  - `[layer-name]`
      - `[metric-name]`
        - `README.md`
          - How to reproduce the metric
          - About the metric
          - Limitations
        - `[metric-name].csv`
        - `[metric-name].csv`
        - `data/`
          - `README.md`
            - About the data source
            - How to reproduce data collection
            - Limitations of the data source
            - The data themselves (space permitting)
