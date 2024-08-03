{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_codehaus_plexus__plexus__pom__17
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-archiver:pom:4.9.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-archiver";
  version = "4.9.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.9.2/plexus-archiver-4.9.2.pom";
      sha256 = "7b4a569c92f60c859ae69594f8935d11bcbb940d86c518742c30f0925a48ba9f";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__17;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
