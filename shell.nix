with (import <nixpkgs> {});
let
  my-python-packages = python-packages: with python-packages; [
    pandas
    google-cloud-bigquery
    dateutil
    setuptools
    packaging
    db-dtypes
    matplotlib
    networkx
    pycountry
    funcy
    plotly

    jupyter
    ipython
    ipywidgets
  ];
  python-with-my-packages = python3.withPackages my-python-packages;
in
mkShell {
  buildInputs = [
    python-with-my-packages
    google-cloud-sdk
  ];
}
