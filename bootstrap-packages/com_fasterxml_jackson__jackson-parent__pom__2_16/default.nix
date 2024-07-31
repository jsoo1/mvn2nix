{
  lib
, pkgs
, patchMavenJar
, com_fasterxml__oss-parent__pom__56
}:
patchMavenJar {
  name = "com.fasterxml.jackson:jackson-parent:pom:2.16";
  groupId = "com.fasterxml.jackson";
  artifactId = "jackson-parent";
  version = "2.16";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/jackson/jackson-parent/2.16/jackson-parent-2.16.pom";
        sha256 = "8bf6142812148a2abf6850b272f0af4c3d8ff1121ed604c402f3f38c9e6546ab";
      };
    }
  ];
  dependencies = [
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
