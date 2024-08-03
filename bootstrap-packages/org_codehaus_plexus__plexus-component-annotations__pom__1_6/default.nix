{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__1_6
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:pom:1.6";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.6/plexus-component-annotations-1.6.pom";
      sha256 = "593a0ff086fb81700e17707c303f8552880bf2a50ce41d9dcb5918e8443710dd";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
