{
  lib
, pkgs
, patchMavenJar
, com_fasterxml_jackson_dataformat__jackson-dataformats-text__pom__2_16_1
, com_fasterxml_jackson__jackson-parent__pom__2_16
, com_fasterxml_jackson_core__jackson-core__2_16_1
, com_fasterxml_jackson_core__jackson-databind__2_16_1
, com_fasterxml_jackson__jackson-bom__pom__2_16_1
, com_fasterxml_jackson__jackson-base__pom__2_16_1
, com_fasterxml_jackson_core__jackson-annotations__2_16_1
, com_fasterxml__oss-parent__pom__56
, org_yaml__snakeyaml__2_2
}:
patchMavenJar {
  name = "com.fasterxml.jackson.dataformat:jackson-dataformat-yaml:2.16.1";
  groupId = "com.fasterxml.jackson.dataformat";
  artifactId = "jackson-dataformat-yaml";
  version = "2.16.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/dataformat/jackson-dataformat-yaml/2.16.1/jackson-dataformat-yaml-2.16.1.jar";
        sha256 = "fd67e0fafe368ad3dfc1b545eb8fe084a5c64628fb71ef70bd94a4dab27aefff";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/dataformat/jackson-dataformat-yaml/2.16.1/jackson-dataformat-yaml-2.16.1.pom";
        sha256 = "f08b667fa3459ea2d4cd19b79469480943ed932311da011e63c2052bb23b1bfd";
      };
    }
  ];
  dependencies = [
    {
      drv = com_fasterxml_jackson_dataformat__jackson-dataformats-text__pom__2_16_1;
      scope = "test";
      optional = false;
    }
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
      drv = com_fasterxml_jackson_core__jackson-databind__2_16_1;
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
    {
      drv = org_yaml__snakeyaml__2_2;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
