{
  lib
, pkgs
, patchMavenJar
, javax_interceptor__javax_interceptor-api__pom__1_2
}:
patchMavenJar {
  name = "javax.interceptor:javax.interceptor-api:jar:1.2";
  groupId = "javax.interceptor";
  artifactId = "javax.interceptor-api";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/interceptor/javax.interceptor-api/1.2/javax.interceptor-api-1.2.jar";
      sha256 = "62acf2da0e19e813e0f5aa5de09108368b12e40b4a2f47c66a88f984f4f5143b";
    };
  };
  dependencies = [
    {
      drv = javax_interceptor__javax_interceptor-api__pom__1_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
