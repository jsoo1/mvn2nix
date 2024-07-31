{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_7
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-containers:pom:1.5.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-containers";
  version = "1.5.5";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.5.5/plexus-containers-1.5.5.pom";
        sha256 = "1bc264824ec876b0ca6f4f5838175c541c638cbc43326a268b9aee7d4778b5ef";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
