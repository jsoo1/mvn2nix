{
  lib
, pkgs
, patchMavenJar
, org_apiguardian__apiguardian-api__pom__1_1_0
}:
patchMavenJar {
  name = "org.apiguardian:apiguardian-api:jar:1.1.0";
  groupId = "org.apiguardian";
  artifactId = "apiguardian-api";
  version = "1.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apiguardian/apiguardian-api/1.1.0/apiguardian-api-1.1.0.jar";
      sha256 = "a9aae9ff8ae3e17a2a18f79175e82b16267c246fbbd3ca9dfbbb290b08dcfdd4";
    };
  };
  dependencies = [
    {
      drv = org_apiguardian__apiguardian-api__pom__1_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
