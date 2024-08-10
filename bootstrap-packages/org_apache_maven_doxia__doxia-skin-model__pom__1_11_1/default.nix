{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sitetools__pom__1_11_1
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-skin-model:pom:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-skin-model";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-skin-model/1.11.1/doxia-skin-model-1.11.1.pom";
      sha256 = "358009924c031e858910e19dcfee1eddb9c352add9e3172e09a06f2afdcbf201";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sitetools__pom__1_11_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
