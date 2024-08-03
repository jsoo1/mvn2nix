{
  lib
, pkgs
, patchMavenJar
, bouncycastle__bcprov-jdk15__jar__140
, bouncycastle__bcpg-jdk15__pom__140
}:
patchMavenJar {
  name = "bouncycastle:bcpg-jdk15:jar:140";
  groupId = "bouncycastle";
  artifactId = "bcpg-jdk15";
  version = "140";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/bouncycastle/bcpg-jdk15/140/bcpg-jdk15-140.jar";
      sha256 = "e8a677d20757347cbecf82f35d51fc14c016a164119ce3d4ea3504451f8fcf04";
    };
  };
  dependencies = [
    {
      drv = bouncycastle__bcprov-jdk15__jar__140;
      scope = "compile";
      optional = false;
    }
    {
      drv = bouncycastle__bcpg-jdk15__pom__140;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
