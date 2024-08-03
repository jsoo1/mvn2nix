{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-compilers__pom__2_8_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-compiler-javac:pom:2.8.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-compiler-javac";
  version = "2.8.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler-javac/2.8.4/plexus-compiler-javac-2.8.4.pom";
      sha256 = "1b46ab52843b7446be98623a97f80db01c1ba4672fba1a41beb165436c0c0601";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-compilers__pom__2_8_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
