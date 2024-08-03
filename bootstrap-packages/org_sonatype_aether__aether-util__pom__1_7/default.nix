{
  lib
, pkgs
, patchMavenJar
, org_sonatype_aether__aether-parent__pom__1_7
}:
patchMavenJar {
  name = "org.sonatype.aether:aether-util:pom:1.7";
  groupId = "org.sonatype.aether";
  artifactId = "aether-util";
  version = "1.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/aether/aether-util/1.7/aether-util-1.7.pom";
      sha256 = "0342bdcbd23208534dde58819ddf937aabbe3d61a47231ffb06632fb47dd2657";
    };
  };
  dependencies = [
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
