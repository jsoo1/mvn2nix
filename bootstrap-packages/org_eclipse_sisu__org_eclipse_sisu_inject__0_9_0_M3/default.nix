{
  lib
, pkgs
, patchMavenJar
, org_eclipse_sisu__sisu-inject__pom__0_9_0_M3
}:
patchMavenJar {
  name = "org.eclipse.sisu:org.eclipse.sisu.inject:0.9.0.M3";
  groupId = "org.eclipse.sisu";
  artifactId = "org.eclipse.sisu.inject";
  version = "0.9.0.M3";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.inject/0.9.0.M3/org.eclipse.sisu.inject-0.9.0.M3.jar";
        sha256 = "15335c4dcf082f599fb8eddcfb58d6a7e9a9c97de2883c257089a479b9b24522";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/org.eclipse.sisu.inject/0.9.0.M3/org.eclipse.sisu.inject-0.9.0.M3.pom";
        sha256 = "57ed17e057ba716cc1f1e5b2d4e014a68c3d50bd33498227a90f712519334dd4";
      };
    }
  ];
  dependencies = [
    {
      drv = org_eclipse_sisu__sisu-inject__pom__0_9_0_M3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
