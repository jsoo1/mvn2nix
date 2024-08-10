{
  lib
, pkgs
, patchMavenJar
, commons-collections__commons-collections__jar__3_2_1
, commons-lang__commons-lang__jar__2_4
, org_apache_velocity__velocity__pom__1_7
}:
patchMavenJar {
  name = "org.apache.velocity:velocity:jar:1.7";
  groupId = "org.apache.velocity";
  artifactId = "velocity";
  version = "1.7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/velocity/velocity/1.7/velocity-1.7.jar";
      sha256 = "ec92dae810034f4b46dbb16ef4364a4013b0efb24a8c5dd67435cae46a290d8e";
    };
  };
  dependencies = [
    {
      drv = commons-collections__commons-collections__jar__3_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-lang__commons-lang__jar__2_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_velocity__velocity__pom__1_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
