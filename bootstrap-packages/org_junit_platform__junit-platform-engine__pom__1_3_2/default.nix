{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-engine:pom:1.3.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-engine";
  version = "1.3.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-engine/1.3.2/junit-platform-engine-1.3.2.pom";
      sha256 = "57d6534a6bcecdeae4e7df1abca8cfc1b88aea77f66b45c5d6a2856c05c4e167";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
