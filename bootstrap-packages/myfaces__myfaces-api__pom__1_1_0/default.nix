{
  lib
, pkgs
, patchMavenJar
, myfaces__myfaces-parent__pom__1_1_0
}:
patchMavenJar {
  name = "myfaces:myfaces-api:pom:1.1.0";
  groupId = "myfaces";
  artifactId = "myfaces-api";
  version = "1.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/myfaces/myfaces-api/1.1.0/myfaces-api-1.1.0.pom";
      sha256 = "5fc2137086c2411e8d8ad01714b0c2fb157725db067dc630de69514de8f2b7ca";
    };
  };
  dependencies = [
    {
      drv = myfaces__myfaces-parent__pom__1_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
