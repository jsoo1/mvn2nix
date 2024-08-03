{
  lib
, pkgs
, patchMavenJar
, junit__junit__pom__3_7
}:
patchMavenJar {
  name = "junit:junit:jar:3.7";
  groupId = "junit";
  artifactId = "junit";
  version = "3.7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/junit/junit/3.7/junit-3.7.jar";
      sha256 = "170d31297cd401b6338679f393900421e64d38b542538b549f3f1a0f26bcd848";
    };
  };
  dependencies = [
    {
      drv = junit__junit__pom__3_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
