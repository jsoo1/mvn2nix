{
  lib
, pkgs
, patchMavenJar
, javax_annotation__jsr250-api__pom__1_0
}:
patchMavenJar {
  name = "javax.annotation:jsr250-api:jar:1.0";
  groupId = "javax.annotation";
  artifactId = "jsr250-api";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/annotation/jsr250-api/1.0/jsr250-api-1.0.jar";
      sha256 = "a1a922d0d9b6d183ed3800dfac01d1e1eb159f0e8c6f94736931c1def54a941f";
    };
  };
  dependencies = [
    {
      drv = javax_annotation__jsr250-api__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
