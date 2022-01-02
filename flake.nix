{
  inputs = { 
    nixpkgs = { 
      type = "github";
      owner = "nixos";
      repo = "nixpkgs";
      ref = "e1eeb53e64159fbb2610ba7810ed511e4d5c10ca";
    };
};

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
      devShell.x86_64-linux =
        pkgs.mkShell { buildInputs = [ pkgs.zig ]; };
   };
}