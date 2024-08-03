{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__1_5_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:pom:1.5.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.5.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.5.4/plexus-component-annotations-1.5.4.pom";
      sha256 = "0124227bc47efc9a00b9aa4fc3ef7f70823d322213c26489e5369a914339c84a";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_5_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
