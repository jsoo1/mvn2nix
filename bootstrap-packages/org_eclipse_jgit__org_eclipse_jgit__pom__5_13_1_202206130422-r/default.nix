{
  lib
, pkgs
, patchMavenJar
, org_eclipse_jgit__org_eclipse_jgit-parent__pom__5_13_1_202206130422-r
}:
patchMavenJar {
  name = "org.eclipse.jgit";
  coordinates = "org.eclipse.jgit:org.eclipse.jgit:pom:5.13.1.202206130422-r";
  groupId = "org.eclipse.jgit";
  artifactId = "org.eclipse.jgit";
  version = "5.13.1.202206130422-r";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/jgit/org.eclipse.jgit/5.13.1.202206130422-r/org.eclipse.jgit-5.13.1.202206130422-r.pom";
      sha256 = "3cc4bebf9c936578eae2b6d24fb2a912d89993a54fd0e2fbc1c8abc049878515";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_jgit__org_eclipse_jgit-parent__pom__5_13_1_202206130422-r;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
