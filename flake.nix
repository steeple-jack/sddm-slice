{
  description = "Slice (SDDM Theme) Flake";

  outputs = { self, nixpkgs }: {
    
    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
	pname = "sddm-slice";
	version = "1.5.1";
	src = self;
	dontBuild = true;
	installPhase = ''
	  mkdir -p $out/share/sddm/themes
	  cp -aR $src $out/share/sddm/themes/sddm-theme-slice
	'';
      };
  };
}
