{
  lib
, pkgs
, patchMavenJar
, org_apache_velocity__velocity__1_6_2
, commons-lang__commons-lang__2_2
, commons-collections__commons-collections__3_2
, commons-logging__commons-logging__1_1
, oro__oro__2_0_8
, commons-beanutils__commons-beanutils__1_7_0
, commons-digester__commons-digester__1_8
, dom4j__dom4j__1_1
, commons-chain__commons-chain__1_1
}:
patchMavenJar {
  name = "org.apache.velocity:velocity-tools:2.0";
  groupId = "org.apache.velocity";
  artifactId = "velocity-tools";
  version = "2.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity-tools/2.0/velocity-tools-2.0.jar";
        sha256 = "b174eb36bc48c25dce10571c7d3d5dca4e4c1b3e2e31a92b9ed68fe9dea688d9";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity-tools/2.0/velocity-tools-2.0.pom";
        sha256 = "b12f13ab462281d48c573acabf124e067a9d49e65ec72b27597db9e91f721b95";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_velocity__velocity__1_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-lang__commons-lang__2_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = commons-collections__commons-collections__3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = oro__oro__2_0_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-beanutils__commons-beanutils__1_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-digester__commons-digester__1_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = dom4j__dom4j__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-chain__commons-chain__1_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
