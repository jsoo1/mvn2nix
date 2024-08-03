{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_0
, org_codehaus_plexus__plexus-languages__pom__1_2_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-java:pom:1.2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-java";
  version = "1.2.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-java/1.2.0/plexus-java-1.2.0.pom";
      sha256 = "d069564d4f490ae22ad885dd4b3ab9ac33a27e23a6f8542760970a36935ccf42";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-languages__pom__1_2_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
