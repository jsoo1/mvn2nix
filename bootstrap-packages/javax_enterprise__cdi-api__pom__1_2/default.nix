{
  lib
, pkgs
, patchMavenJar
, org_jboss_weld__weld-parent__pom__26
}:
patchMavenJar {
  name = "javax.enterprise:cdi-api:pom:1.2";
  groupId = "javax.enterprise";
  artifactId = "cdi-api";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/enterprise/cdi-api/1.2/cdi-api-1.2.pom";
      sha256 = "d7d713c993363764ba1667296b835ee914e19b2e70921eafe96b37f0d5b4088f";
    };
  };
  dependencies = [
    {
      drv = org_jboss_weld__weld-parent__pom__26;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
