{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "org.eclipse.sisu:sisu-plexus:pom:0.0.0.M2a";
  groupId = "org.eclipse.sisu";
  artifactId = "sisu-plexus";
  version = "0.0.0.M2a";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/sisu-plexus/0.0.0.M2a/sisu-plexus-0.0.0.M2a.pom";
      sha256 = "83769dbe7b5728f6b22061acb243aac887a3cdcd070e140a3fc9e59818b17645";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
