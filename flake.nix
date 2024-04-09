{
  description = "Nix Flake package for my CV";
  inputs.nixpkgs.url = "nixpkgs/nixos-23.11";
  outputs = { self, nixpkgs }:
    let
      pkgName = "matejascv";
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
      nixpkgsFor = forAllSystems (system: import nixpkgs { inherit system; });
      drv = {stdenv, texliveFull, ...}: stdenv.mkDerivation {
        name = pkgName;
        src = ./.;
        buildInputs = [ texliveFull ];
        buildPhase = ''
          pdflatex cv.tex
        '';
        installPhase = ''
          cp cv.pdf $out
        '';
      };
    in
    {
      overlays.default = (final: prev: {
        ${pkgName} = prev.callPackage drv {};
      });
      packages = forAllSystems (system:
        let
          pkgs = nixpkgsFor.${system};
        in {
          ${pkgName} = drv pkgs;
          default = drv pkgs;
        }
      );
      devShells = forAllSystems (system:
        let
          pkgs = nixpkgsFor.${system};
        in {
          default = pkgs.mkShell {
            buildInputs = with pkgs; [ git rsync texliveFull ];
          };
        }
      );
    };
}
