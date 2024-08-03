{
  lib
, pkgs
, patchMavenJar
, junit__junit__jar__3_8_2
, org_codehaus_plexus__plexus-component-annotations__pom__1_0-beta-3_0_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:jar:1.0-beta-3.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.0-beta-3.0.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.0-beta-3.0.5/plexus-component-annotations-1.0-beta-3.0.5.jar";
      sha256 = "81daf6214a340718ae1235717f5fc0eaefbc85822aa3be4fdca89a3a693ba277";
    };
  };
  dependencies = [
    {
      drv = junit__junit__jar__3_8_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__pom__1_0-beta-3_0_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
