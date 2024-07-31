{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sitetools__pom__1_11_1
, org_apache_maven__maven-parent__pom__34
, org_codehaus_plexus__plexus-utils__3_3_0
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-skin-model:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-skin-model";
  version = "1.11.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-skin-model/1.11.1/doxia-skin-model-1.11.1.jar";
        sha256 = "5337efbe45413d24b71422d145062f84bde96271dab9f3a5caa3fab461974bf4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-skin-model/1.11.1/doxia-skin-model-1.11.1.pom";
        sha256 = "358009924c031e858910e19dcfee1eddb9c352add9e3172e09a06f2afdcbf201";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sitetools__pom__1_11_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
