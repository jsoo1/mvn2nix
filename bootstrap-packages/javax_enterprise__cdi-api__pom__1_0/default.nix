{
  lib
, pkgs
, patchMavenJar
, org_jboss_weld__weld-api-parent__pom__1_0
}:
patchMavenJar {
  name = "javax.enterprise:cdi-api:pom:1.0";
  groupId = "javax.enterprise";
  artifactId = "cdi-api";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/enterprise/cdi-api/1.0/cdi-api-1.0.pom";
      sha256 = "43125840dd928065fa83fb76c89873be4fc34e28c8b6fb62fd66be9be965100d";
    };
  };
  dependencies = [
    {
      drv = org_jboss_weld__weld-api-parent__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
