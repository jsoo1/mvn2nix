{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.osgi:org.osgi.compendium:4.2.0";
  groupId = "org.osgi";
  artifactId = "org.osgi.compendium";
  version = "4.2.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/osgi/org.osgi.compendium/4.2.0/org.osgi.compendium-4.2.0.jar";
        sha256 = "c1310c4186ccc17a0d7089d83f96dc940c4eccb98d5edfd58819393c29c31655";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/osgi/org.osgi.compendium/4.2.0/org.osgi.compendium-4.2.0.pom";
        sha256 = "16ba26c9913f454f9db166bd38b2c3341b4dfc884ae5256b4f1b3c9d307228c7";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
