{
  lib
, pkgs
, patchMavenJar
, org_sonatype_plexus__plexus-cipher__pom__1_4
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-cipher:jar:1.4";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-cipher";
  version = "1.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-cipher/1.4/plexus-cipher-1.4.jar";
      sha256 = "5a15fdba22669e0fdd06e10dcce6320879e1f7398fbc910cd0677b50672a78c4";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_plexus__plexus-cipher__pom__1_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
