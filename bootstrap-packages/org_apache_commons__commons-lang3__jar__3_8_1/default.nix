{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-lang3__pom__3_8_1
}:
patchMavenJar {
  name = "org.apache.commons:commons-lang3:jar:3.8.1";
  groupId = "org.apache.commons";
  artifactId = "commons-lang3";
  version = "3.8.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.8.1/commons-lang3-3.8.1.jar";
      sha256 = "dac807f65b07698ff39b1b07bfef3d87ae3fd46d91bbf8a2bc02b2a831616f68";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-lang3__pom__3_8_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
