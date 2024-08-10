{
  lib
, pkgs
, patchMavenJar
, com_googlecode_javaewah__JavaEWAH__jar__1_1_13
, org_slf4j__slf4j-api__jar__1_7_30
, org_eclipse_jgit__org_eclipse_jgit__pom__5_13_1_202206130422-r
}:
patchMavenJar {
  name = "org.eclipse.jgit:org.eclipse.jgit:jar:5.13.1.202206130422-r";
  groupId = "org.eclipse.jgit";
  artifactId = "org.eclipse.jgit";
  version = "5.13.1.202206130422-r";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/jgit/org.eclipse.jgit/5.13.1.202206130422-r/org.eclipse.jgit-5.13.1.202206130422-r.jar";
      sha256 = "d679365a6c8e55c1496701099f5e5765433f68dcb659759416ba5b222eb5055c";
    };
  };
  dependencies = [
    {
      drv = com_googlecode_javaewah__JavaEWAH__jar__1_1_13;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_30;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_jgit__org_eclipse_jgit__pom__5_13_1_202206130422-r;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
