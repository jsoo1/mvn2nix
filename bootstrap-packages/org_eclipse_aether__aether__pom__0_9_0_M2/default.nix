{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.eclipse.aether:aether:pom:0.9.0.M2";
  groupId = "org.eclipse.aether";
  artifactId = "aether";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/aether/aether/0.9.0.M2/aether-0.9.0.M2.pom";
      sha256 = "30bf8c64ccf77ebbf52b04ec576a0fa77b16b26eaf348519b1684263450d39ce";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
