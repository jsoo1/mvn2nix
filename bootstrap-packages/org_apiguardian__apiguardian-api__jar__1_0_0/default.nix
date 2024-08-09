{
  lib
, pkgs
, patchMavenJar
, org_apiguardian__apiguardian-api__pom__1_0_0
}:
patchMavenJar {
  name = "org.apiguardian:apiguardian-api:jar:1.0.0";
  groupId = "org.apiguardian";
  artifactId = "apiguardian-api";
  version = "1.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apiguardian/apiguardian-api/1.0.0/apiguardian-api-1.0.0.jar";
      sha256 = "1f58b77470d8d147a0538d515347dd322f49a83b9e884b8970051160464b65b3";
    };
  };
  dependencies = [
    {
      drv = org_apiguardian__apiguardian-api__pom__1_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
