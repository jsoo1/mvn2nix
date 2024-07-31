{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__sisu-inject__pom__0_3_5
, org_sonatype_oss__oss-parent__pom__9
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.inject:0.3.5";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.inject";
  version = "0.3.5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.inject/0.3.5/org.eclipse.sisu.inject-0.3.5.jar";
        sha256 = "c5994010bcdce1d2bd603a4d50c47191ddbd7875d1157b23aaa26d33c82fda13";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.inject/0.3.5/org.eclipse.sisu.inject-0.3.5.pom";
        sha256 = "c2976972b4242ffd8604716d8475f56755da0fa28618344ec4e5327810696d71";
      };
    }
  ];
  dependencies = [
    {
      drv = org_eclipse_sisu__sisu-inject__pom__0_3_5;
      scope = "test";
      optional = false;
    }
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
