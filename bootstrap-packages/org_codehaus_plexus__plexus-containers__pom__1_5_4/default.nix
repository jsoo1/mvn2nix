{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-containers:pom:1.5.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-containers";
  version = "1.5.4";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.5.4/plexus-containers-1.5.4.pom";
        sha256 = "18b4a1b0a65c0d6b7cf9cd48ee9f3467b6deb8ace4c1309522c184f94c4cfa2e";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
