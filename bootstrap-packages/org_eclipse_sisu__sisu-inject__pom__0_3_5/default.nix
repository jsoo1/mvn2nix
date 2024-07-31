{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__9
}:
patchMavenJar {
  name = "org.eclipse.sisu:sisu-inject:pom:0.3.5";
  groupId = "org.eclipse.sisu";
  artifactId = "sisu-inject";
  version = "0.3.5";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/sisu-inject/0.3.5/sisu-inject-0.3.5.pom";
        sha256 = "5f32ecab9c8f6dff1f9e41b853e40d8f23a2508219154ef67cc00d4556f5f5dd";
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
