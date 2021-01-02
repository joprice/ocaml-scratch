let
  pkg-sources = fetchTarball {
    url = "https://github.com/sternenseemann/nixpkgs/archive/3823e9790bd4bb51a3578ecfef3a7321b741be1d.tar.gz";
    sha256 = "1fd9fllv8p31y0nlswp2rblhdpkih4v8i58wszp0xacbqqapax09";
    #url = "https://github.com/NixOS/nixpkgs/archive/e9158eca70ae59e73fae23be5d13d3fa0cfc78b4.tar.gz";
    #sha256 = "0cnmvnvin9ixzl98fmlm3g17l6w95gifqfb3rfxs55c0wj2ddy53";
  };
  pkgs = import pkg-sources { };
in
with pkgs;
stdenv.mkDerivation {
  name = "shell";
  buildInputs = with ocamlPackages; [
    merlin
    dune_2
    findlib
    fswatch
    ocaml-lsp
    ocamlformat
    utop
    ppx_deriving
    ocaml
  ];
}
