{
  lib
, pkgs
, patchMavenJar
, com_fasterxml_jackson__jackson-parent__pom__2_16
, com_fasterxml_jackson__jackson-bom__pom__2_16_1
, com_fasterxml_jackson__jackson-base__pom__2_16_1
, com_fasterxml__oss-parent__pom__56
}:
patchMavenJar {
  name = "com.fasterxml.jackson.core:jackson-core:2.16.1";
  groupId = "com.fasterxml.jackson.core";
  artifactId = "jackson-core";
  version = "2.16.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/core/jackson-core/2.16.1/jackson-core-2.16.1.jar";
        sha256 = "f5f8ef90609e64fec82eb908e497dc7d81b2eb983fe509b870292a193cde4dfb";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/core/jackson-core/2.16.1/jackson-core-2.16.1.pom";
        sha256 = "1eed16104d80aecc137c41fe16e4a3ff5ab9a2bfa8b2c49c5772fe4a5fd2e6ce";
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
      drv = com_fasterxml__oss-parent__pom__56;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
