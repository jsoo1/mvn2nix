{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, org_apache_maven_doxia__doxia-skin-model__pom__1_11_1
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-skin-model:jar:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-skin-model";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-skin-model/1.11.1/doxia-skin-model-1.11.1.jar";
      sha256 = "5337efbe45413d24b71422d145062f84bde96271dab9f3a5caa3fab461974bf4";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-skin-model__pom__1_11_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
