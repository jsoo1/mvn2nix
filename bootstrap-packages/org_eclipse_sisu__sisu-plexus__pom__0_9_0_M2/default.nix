{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.eclipse.sisu:sisu-plexus:pom:0.9.0.M2";
  groupId = "org.eclipse.sisu";
  artifactId = "sisu-plexus";
  version = "0.9.0.M2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/sisu-plexus/0.9.0.M2/sisu-plexus-0.9.0.M2.pom";
      sha256 = "ec6e99407036014f81a39d81c56ba40d924c72d96e402ad14f7efd29b2c775cd";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
