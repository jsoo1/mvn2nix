{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-languages__pom__0_9_10
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-java:pom:0.9.10";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-java";
  version = "0.9.10";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-java/0.9.10/plexus-java-0.9.10.pom";
      sha256 = "b0013096156cbb98dba97c2b0b07be194d33208b5bde7ee8866e69355e9ebd86";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-languages__pom__0_9_10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
