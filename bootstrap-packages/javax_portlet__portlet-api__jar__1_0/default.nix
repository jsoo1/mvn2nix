{
  lib
, pkgs
, patchMavenJar
, javax_portlet__portlet-api__pom__1_0
}:
patchMavenJar {
  name = "javax.portlet:portlet-api:jar:1.0";
  groupId = "javax.portlet";
  artifactId = "portlet-api";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/portlet/portlet-api/1.0/portlet-api-1.0.jar";
      sha256 = "250fd7bfac5f70f799cef286432dffef4dbb612959f8a244940a80bbc0defde6";
    };
  };
  dependencies = [
    {
      drv = javax_portlet__portlet-api__pom__1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
