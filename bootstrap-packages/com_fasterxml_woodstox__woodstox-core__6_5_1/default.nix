{
  lib
, pkgs
, patchMavenJar
, org_codehaus_woodstox__stax2-api__4_2_1
, com_fasterxml__oss-parent__pom__50
}:
patchMavenJar {
  name = "com.fasterxml.woodstox:woodstox-core:6.5.1";
  groupId = "com.fasterxml.woodstox";
  artifactId = "woodstox-core";
  version = "6.5.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/woodstox/woodstox-core/6.5.1/woodstox-core-6.5.1.jar";
        sha256 = "c928d60665c6415fb1c39775cf95cfc44f7f4580cf5ab01b1c380ebffd76887f";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/fasterxml/woodstox/woodstox-core/6.5.1/woodstox-core-6.5.1.pom";
        sha256 = "4839654e16b1714e74f51abcb378d8356814ab8f4d5273d1dd2f1ce8a390addc";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_woodstox__stax2-api__4_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_fasterxml__oss-parent__pom__50;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
