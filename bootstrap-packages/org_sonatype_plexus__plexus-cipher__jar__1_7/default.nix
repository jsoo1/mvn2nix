{
  lib
, pkgs
, patchMavenJar
, org_sonatype_plexus__plexus-cipher__pom__1_7
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-cipher:jar:1.7";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-cipher";
  version = "1.7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-cipher/1.7/plexus-cipher-1.7.jar";
      sha256 = "114859861ff10f987b880d6f34e3215274af3cc92b3a73831c84d596e37c6511";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_plexus__plexus-cipher__pom__1_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
