{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__1_5_6
}:
patchMavenJar {
  name = "org.slf4j:slf4j-api:1.5.6";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "1.5.6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.5.6/slf4j-api-1.5.6.jar";
        sha256 = "b96864a2ad8c005d62351a500d72d2545b3bcb3e30564a64b0c467c935de8303";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.5.6/slf4j-api-1.5.6.pom";
        sha256 = "91b0a0d016b8c0cba1ddd8a5c59e5bf5c2a9b49b95577e8e38927a7fdff55ce8";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__1_5_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
