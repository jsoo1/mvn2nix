{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__9
}:
patchMavenJar {
  name = "org.eclipse.sisu:sisu-plexus:pom:0.3.5";
  groupId = "org.eclipse.sisu";
  artifactId = "sisu-plexus";
  version = "0.3.5";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/sisu-plexus/0.3.5/sisu-plexus-0.3.5.pom";
        sha256 = "6eba0902efd899aec0d8d19ac3cbc53123cd41139fe0e1d29cc5c874a791b9de";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
