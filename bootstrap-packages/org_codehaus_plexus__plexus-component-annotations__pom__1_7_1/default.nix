{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__1_7_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:pom:1.7.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.7.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.7.1/plexus-component-annotations-1.7.1.pom";
      sha256 = "a909a0cbe292e54122b6b785f6924ab2f09b1630b7889c800e099e2627f91a78";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_7_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
