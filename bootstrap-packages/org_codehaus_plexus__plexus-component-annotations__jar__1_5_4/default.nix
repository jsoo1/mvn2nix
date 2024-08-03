{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-component-annotations__pom__1_5_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:jar:1.5.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.5.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.5.4/plexus-component-annotations-1.5.4.jar";
      sha256 = "f4077ff4afbddbb6f63bcd61d706745806ebc7b55626b90686948bf284502c3c";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-component-annotations__pom__1_5_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
