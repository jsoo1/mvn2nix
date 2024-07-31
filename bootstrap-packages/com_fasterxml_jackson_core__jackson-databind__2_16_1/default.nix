{
  lib
, pkgs
, patchMavenJar
, com_fasterxml_jackson__jackson-parent__pom__2_16
, com_fasterxml_jackson_core__jackson-core__2_16_1
, com_fasterxml_jackson__jackson-bom__pom__2_16_1
, com_fasterxml_jackson__jackson-base__pom__2_16_1
, com_fasterxml_jackson_core__jackson-annotations__2_16_1
, com_fasterxml__oss-parent__pom__56
}:
patchMavenJar {
  name = "com.fasterxml.jackson.core:jackson-databind:2.16.1";
  groupId = "com.fasterxml.jackson.core";
  artifactId = "jackson-databind";
  version = "2.16.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/core/jackson-databind/2.16.1/jackson-databind-2.16.1.jar";
        sha256 = "baf8a8ebee8f45ef68cdd5e2dd3923b3e296c0937b96ec0b4806aa3a31bccd1d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/core/jackson-databind/2.16.1/jackson-databind-2.16.1.pom";
        sha256 = "7c8a6b428ea4688d01206956cccafb23ac928fc69d717a76bdd7743348d28db8";
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
      drv = com_fasterxml_jackson_core__jackson-core__2_16_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_fasterxml_jackson__jackson-bom__pom__2_16_1;
      scope = "test";
      optional = false;
    }
    {
      drv = com_fasterxml_jackson__jackson-base__pom__2_16_1;
      scope = "test";
      optional = false;
    }
    {
      drv = com_fasterxml_jackson_core__jackson-annotations__2_16_1;
      scope = "compile";
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
