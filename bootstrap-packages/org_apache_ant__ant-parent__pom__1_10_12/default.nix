{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache.ant:ant-parent:pom:1.10.12";
  groupId = "org.apache.ant";
  artifactId = "ant-parent";
  version = "1.10.12";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/ant/ant-parent/1.10.12/ant-parent-1.10.12.pom";
      sha256 = "c519f4d47bbf9cdfd0d011ec6854295fca81e5a09e38b85f96e26f76d80e5f88";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
