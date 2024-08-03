{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.eclipse.sisu:sisu-inject:pom:0.9.0.M2";
  groupId = "org.eclipse.sisu";
  artifactId = "sisu-inject";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/sisu-inject/0.9.0.M2/sisu-inject-0.9.0.M2.pom";
      sha256 = "7630f4cd4d1620067fa83e1d748b012cffa0655e5380cc0e4a5e283d3b441fdb";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
