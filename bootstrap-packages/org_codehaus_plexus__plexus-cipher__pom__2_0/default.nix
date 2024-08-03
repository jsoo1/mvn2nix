{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__8
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-cipher:pom:2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-cipher";
  version = "2.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-cipher/2.0/plexus-cipher-2.0.pom";
      sha256 = "04842f331b0225b85a5e20439710d228ea7a6302abe6d53c9c9846fbc5bf99ff";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
