{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_3
}:
patchMavenJar {
  name = "plexus";
  coordinates = "org.codehaus.plexus:plexus:pom:14";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "14";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/14/plexus-14.pom";
      sha256 = "b1a3417f1e63f089aec314043592568a01ba29c5024963c40f5477b21d4d4cd8";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
