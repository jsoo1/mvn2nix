{
  lib
, pkgs
, patchMavenJar
, com_fasterxml_jackson__jackson-parent__pom__2_16
, org_codehaus_woodstox__stax2-api__4_2_1
, com_fasterxml_jackson_core__jackson-core__2_16_1
, com_fasterxml_jackson_core__jackson-databind__2_16_1
, com_fasterxml_woodstox__woodstox-core__6_5_1
, com_fasterxml_jackson__jackson-bom__pom__2_16_1
, com_fasterxml_jackson__jackson-base__pom__2_16_1
, com_fasterxml_jackson_core__jackson-annotations__2_16_1
, com_fasterxml__oss-parent__pom__56
}:
patchMavenJar {
  name = "com.fasterxml.jackson.dataformat:jackson-dataformat-xml:2.16.1";
  groupId = "com.fasterxml.jackson.dataformat";
  artifactId = "jackson-dataformat-xml";
  version = "2.16.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/dataformat/jackson-dataformat-xml/2.16.1/jackson-dataformat-xml-2.16.1.jar";
        sha256 = "b8e73fa171d1276832abbf20ebb4df597e377405f875ed39808cee9acca3d3ac";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/dataformat/jackson-dataformat-xml/2.16.1/jackson-dataformat-xml-2.16.1.pom";
        sha256 = "9212845730dd776d9413beadd89411490f541b8fdaef031d20bdfcd1d447d2e0";
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
      drv = org_codehaus_woodstox__stax2-api__4_2_1;
      scope = "compile";
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
      drv = com_fasterxml_woodstox__woodstox-core__6_5_1;
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
