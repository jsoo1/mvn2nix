{
  lib
, pkgs
, patchMavenJar
, org_jboss_weld__weld-parent__pom__6
}:
patchMavenJar {
  name = "org.jboss.weld:weld-api-bom:pom:1.0";
  groupId = "org.jboss.weld";
  artifactId = "weld-api-bom";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/jboss/weld/weld-api-bom/1.0/weld-api-bom-1.0.pom";
      sha256 = "8f74dc3a67c107376168b9f7b1b94e317e172768d398f826330931a02ff57b98";
    };
  };
  dependencies = [
    {
      drv = org_jboss_weld__weld-parent__pom__6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
