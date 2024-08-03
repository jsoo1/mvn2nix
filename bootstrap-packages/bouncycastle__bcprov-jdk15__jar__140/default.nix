{
  lib
, pkgs
, patchMavenJar
, bouncycastle__bcprov-jdk15__pom__140
}:
patchMavenJar {
  name = "bouncycastle:bcprov-jdk15:jar:140";
  groupId = "bouncycastle";
  artifactId = "bcprov-jdk15";
  version = "140";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/bouncycastle/bcprov-jdk15/140/bcprov-jdk15-140.jar";
      sha256 = "05ee1e3f6e9b85a5ef90c1013e93b0bed92726376818e054d47382913201209f";
    };
  };
  dependencies = [
    {
      drv = bouncycastle__bcprov-jdk15__pom__140;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
