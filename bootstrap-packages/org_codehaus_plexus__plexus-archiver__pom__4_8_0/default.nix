{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_3
, org_codehaus_plexus__plexus__pom__14
}:
patchMavenJar {
  name = "plexus-archiver";
  coordinates = "org.codehaus.plexus:plexus-archiver:pom:4.8.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-archiver";
  version = "4.8.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.8.0/plexus-archiver-4.8.0.pom";
      sha256 = "a76eb8d9750adb54408f7186460593ec8068bb9f7ded97634a8c5af296d5a28d";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_3;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
