{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__1_5_15
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:1.5.15";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.5.15";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.5.15/plexus-utils-1.5.15.jar";
      sha256 = "2ca121831e597b4d8f2cb22d17c5c041fc23a7777ceb6bfbdd4dfb34bbe7d997";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__1_5_15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
