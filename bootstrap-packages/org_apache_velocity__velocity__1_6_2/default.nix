{
  lib
, pkgs
, patchMavenJar
, oro__oro__2_0_8
, commons-lang__commons-lang__2_4
, commons-collections__commons-collections__3_2_1
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.velocity:velocity:1.6.2";
  groupId = "org.apache.velocity";
  artifactId = "velocity";
  version = "1.6.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.6.2/velocity-1.6.2.jar";
        sha256 = "55a78c885ec9cfb0de7c2130d639d28abd36a8c9407b21a9c17e1f504d902b6c";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.6.2/velocity-1.6.2.pom";
        sha256 = "f663422e0b92069dcb30d58a2652660b727252ae94e40e8616e710723c64cdec";
      };
    }
  ];
  dependencies = [
    {
      drv = oro__oro__2_0_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-lang__commons-lang__2_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-collections__commons-collections__3_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
