{
  description = "Flake for building my AoC2022 code using nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-22.11";
  };

  outputs = { self, nixpkgs }@inputs:
    let
      supportedSystems = [ "x86_64-linux" ];
      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);
    in
    {
      devShell = forAllSystems
        (system:
          let
            pkgs = import nixpkgs {
              inherit system;
            };
          in
            pkgs.mkShellNoCC {
              nativeBuildInputs  = with pkgs; [
                dotty # scala3
                sbt
                coursier
              ];
            }
        );
    };
}
