{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_5_5
, org_sonatype_plexus__plexus-cipher__jar__1_4
, org_sonatype_plexus__plexus-sec-dispatcher__pom__1_3
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-sec-dispatcher:jar:1.3";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-sec-dispatcher";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-sec-dispatcher/1.3/plexus-sec-dispatcher-1.3.jar";
      sha256 = "3b0559bb8432f28937efe6ca193ef54a8506d0075d73fd7406b9b116c6a11063";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-cipher__jar__1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-sec-dispatcher__pom__1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
