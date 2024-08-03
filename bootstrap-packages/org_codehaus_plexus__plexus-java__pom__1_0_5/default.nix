{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-languages__pom__1_0_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-java:pom:1.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-java";
  version = "1.0.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-java/1.0.5/plexus-java-1.0.5.pom";
      sha256 = "4da92114a3ecf41715046ffa12714b6f16217bcc1dfe50e3affe0e2005b21584";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-languages__pom__1_0_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
