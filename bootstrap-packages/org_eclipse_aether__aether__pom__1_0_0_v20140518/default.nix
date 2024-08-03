{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.eclipse.aether:aether:pom:1.0.0.v20140518";
  groupId = "org.eclipse.aether";
  artifactId = "aether";
  version = "1.0.0.v20140518";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether/1.0.0.v20140518/aether-1.0.0.v20140518.pom";
      sha256 = "606b5fa03b171d8204aac0fbace11ee28e71175a0f869bd45f09c9319e7e88dc";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
