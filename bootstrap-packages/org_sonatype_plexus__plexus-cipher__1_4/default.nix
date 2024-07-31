{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__4
, org_sonatype_spice__spice-parent__pom__12
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-cipher:1.4";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-cipher";
  version = "1.4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-cipher/1.4/plexus-cipher-1.4.jar";
        sha256 = "5a15fdba22669e0fdd06e10dcce6320879e1f7398fbc910cd0677b50672a78c4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-cipher/1.4/plexus-cipher-1.4.pom";
        sha256 = "a63a2e23988cca7fac6c93886d6f0506fd26d88d7e8cc0cb89b9c6e0d6c994ad";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__4;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_spice__spice-parent__pom__12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
