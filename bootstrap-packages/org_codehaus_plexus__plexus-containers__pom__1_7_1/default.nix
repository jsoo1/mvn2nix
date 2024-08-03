{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__4_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-containers:pom:1.7.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-containers";
  version = "1.7.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.7.1/plexus-containers-1.7.1.pom";
      sha256 = "5566a0bb51dc994c0350206608c7b4cdcc9b66881497bab56a32c42edca53e79";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__4_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
