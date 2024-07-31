{
  lib
, pkgs
, patchMavenJar
, commons-lang__commons-lang__2_4
, commons-collections__commons-collections__3_2_1
, org_apache__apache__pom__4
, oro__oro__2_0_8
}:
patchMavenJar {
  name = "org.apache.velocity:velocity:1.7";
  groupId = "org.apache.velocity";
  artifactId = "velocity";
  version = "1.7";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.7/velocity-1.7.jar";
        sha256 = "ec92dae810034f4b46dbb16ef4364a4013b0efb24a8c5dd67435cae46a290d8e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.7/velocity-1.7.pom";
        sha256 = "a3f97ceab5f073ed93ef8fe6304e35252d83ecf2442c83fe0492b8b73da3b40b";
      };
    }
  ];
  dependencies = [
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
    {
      drv = oro__oro__2_0_8;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
