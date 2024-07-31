{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__1_6_1
}:
patchMavenJar {
  name = "org.slf4j:slf4j-api:1.6.1";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "1.6.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.6.1/slf4j-api-1.6.1.jar";
        sha256 = "d849d117fc3798838c6cd42db6a7ecf6d9ae050c3997417b8e4e251e592b1d3e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/1.6.1/slf4j-api-1.6.1.pom";
        sha256 = "069ba3837bdf8bdb4807648f1579fd43bc292b8d76a6f31b1574867dd93bca56";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__1_6_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
