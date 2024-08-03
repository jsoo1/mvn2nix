{
  lib
, pkgs
, patchMavenJar
, javax_annotation__javax_annotation-api__pom__1_2
}:
patchMavenJar {
  name = "javax.annotation:javax.annotation-api:jar:1.2";
  groupId = "javax.annotation";
  artifactId = "javax.annotation-api";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/annotation/javax.annotation-api/1.2/javax.annotation-api-1.2.jar";
      sha256 = "5909b396ca3a2be10d0eea32c74ef78d816e1b4ead21de1d78de1f890d033e04";
    };
  };
  dependencies = [
    {
      drv = javax_annotation__javax_annotation-api__pom__1_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
