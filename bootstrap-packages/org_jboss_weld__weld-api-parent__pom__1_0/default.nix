{
  lib
, pkgs
, patchMavenJar
, org_jboss_weld__weld-api-bom__pom__1_0
}:
patchMavenJar {
  name = "org.jboss.weld:weld-api-parent:pom:1.0";
  groupId = "org.jboss.weld";
  artifactId = "weld-api-parent";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/jboss/weld/weld-api-parent/1.0/weld-api-parent-1.0.pom";
      sha256 = "1fb0dbd26fba2b009a75355e87620256b0689cb46f124f4836bc66fc296942c1";
    };
  };
  dependencies = [
    {
      drv = org_jboss_weld__weld-api-bom__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
