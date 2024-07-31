{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "log4j:log4j:1.2.6";
  groupId = "log4j";
  artifactId = "log4j";
  version = "1.2.6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/log4j/log4j/1.2.6/log4j-1.2.6.jar";
        sha256 = "de9639bbf4179bf880e9649fc7e92b8fa6875212e9d1bcbb59dee8707cb17832";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/log4j/log4j/1.2.6/log4j-1.2.6.pom";
        sha256 = "74dacd8d4630f18dbe51a172a469fd712b51ab905e6ba95ef6331cac6dc387d4";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
