{
  lib
, pkgs
, patchMavenJar
, org_sonatype_aether__aether-spi__1_7
, org_sonatype_forge__forge-parent__pom__6
, org_sonatype_aether__aether-util__1_7
, org_sonatype_aether__aether-api__1_7
, org_sonatype_aether__aether-parent__pom__1_7
}:
patchMavenJar {
  name = "org.sonatype.aether:aether-impl:1.7";
  groupId = "org.sonatype.aether";
  artifactId = "aether-impl";
  version = "1.7";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/aether/aether-impl/1.7/aether-impl-1.7.jar";
        sha256 = "288149850d8d131763df4151f7e443fd2739e48510a6e4cfe49ca082c76130fa";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/sonatype/aether/aether-impl/1.7/aether-impl-1.7.pom";
        sha256 = "0cf0bc1966c54645ed9702538158cc4a363861905470991616f4dabd4030e851";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_aether__aether-spi__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_forge__forge-parent__pom__6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-util__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-api__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_aether__aether-parent__pom__1_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
