{
  lib
, pkgs
, patchMavenJar
, junit__junit__jar__3_8_2
, org_codehaus_plexus__plexus-component-annotations__pom__1_0-beta-3_0_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:jar:1.0-beta-3.0.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.0-beta-3.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.0-beta-3.0.1/plexus-component-annotations-1.0-beta-3.0.1.jar";
      sha256 = "a8cf8d8329f14077528b2fe3e2278619957ece5fc7276925bc8725aa779d4ace";
    };
  };
  dependencies = [
    {
      drv = junit__junit__jar__3_8_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__pom__1_0-beta-3_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
