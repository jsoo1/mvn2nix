{
  lib
, pkgs
, patchMavenJar
, com_fasterxml_jackson__jackson-parent__pom__2_16
, com_fasterxml_jackson_core__jackson-core__2_16_1
, com_fasterxml_jackson__jackson-bom__pom__2_16_1
, com_fasterxml_jackson__jackson-base__pom__2_16_1
, com_fasterxml__oss-parent__pom__56
}:
patchMavenJar {
  name = "com.fasterxml.jackson.dataformat:jackson-dataformats-text:pom:2.16.1";
  groupId = "com.fasterxml.jackson.dataformat";
  artifactId = "jackson-dataformats-text";
  version = "2.16.1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/dataformat/jackson-dataformats-text/2.16.1/jackson-dataformats-text-2.16.1.pom";
        sha256 = "d43bac7d647c083f172383fc6229e400e48963a4ee09f4ea0f62d9032495bc94";
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
      drv = com_fasterxml__oss-parent__pom__56;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
