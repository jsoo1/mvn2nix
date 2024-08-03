{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu__sisu-guava__pom__0_9_9
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-guava:jar:0.9.9";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-guava";
  version = "0.9.9";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-guava/0.9.9/sisu-guava-0.9.9.jar";
      sha256 = "9897e80ff6c08fc45b5b5ebd81d9e943a1087bdf0ad50cda457d616abbdaacd9";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_sisu__sisu-guava__pom__0_9_9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
