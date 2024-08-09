{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-commons:pom:1.3.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-commons";
  version = "1.3.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-commons/1.3.2/junit-platform-commons-1.3.2.pom";
      sha256 = "d206772643daf333e0981ce5cc78dcce83bdb2a84666e79bb588f862fabd305a";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
