{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "junit:junit:pom:4.13.2";
  groupId = "junit";
  artifactId = "junit";
  version = "4.13.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/junit/junit/4.13.2/junit-4.13.2.pom";
      sha256 = "569b6977ee4603c965c1c46c3058fa6e969291b0160eb6964dd092cd89eadd94";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
