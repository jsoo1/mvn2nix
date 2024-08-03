{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-components:pom:1.1.14";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-components";
  version = "1.1.14";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-components/1.1.14/plexus-components-1.1.14.pom";
      sha256 = "381d72c526be217b770f9f8c3f749a86d3b1548ac5c1fcb48d267530ec60d43f";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
