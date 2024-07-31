{
  lib
, pkgs
, patchMavenJar
, com_fasterxml_jackson__jackson-parent__pom__2_16
, com_fasterxml__oss-parent__pom__56
}:
patchMavenJar {
  name = "com.fasterxml.jackson.core:jackson-annotations:2.16.1";
  groupId = "com.fasterxml.jackson.core";
  artifactId = "jackson-annotations";
  version = "2.16.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.16.1/jackson-annotations-2.16.1.jar";
        sha256 = "a4730771e6a495dd3793a42cdb8ce6bddb96c77e15f40c98fd8d9a7ae09e7286";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.16.1/jackson-annotations-2.16.1.pom";
        sha256 = "c6dff6a78b01498929a69af364e6cb78aef72d2a45254b92d6495b2a198ec129";
      };
    }
  ];
  dependencies = [
    {
      drv = com_fasterxml_jackson__jackson-parent__pom__2_16;
      scope = "test";
      optional = false;
    }
    {
      drv = com_fasterxml__oss-parent__pom__56;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
