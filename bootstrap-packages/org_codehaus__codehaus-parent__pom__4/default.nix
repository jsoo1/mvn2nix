{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus:codehaus-parent:pom:4";
  groupId = "org.codehaus";
  artifactId = "codehaus-parent";
  version = "4";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/codehaus-parent/4/codehaus-parent-4.pom";
        sha256 = "6b87237de8c2e1740cf80627c7f3ce3e15de1930bb250c55a1eca94fa3e014df";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
