{
  lib
, pkgs
, patchMavenJar
, org_eclipse_jgit__org_eclipse_jgit-parent__pom__5_13_1_202206130422-r
}:
patchMavenJar {
  name = "org.eclipse.jgit:org.eclipse.jgit.ssh.apache:pom:5.13.1.202206130422-r";
  groupId = "org.eclipse.jgit";
  artifactId = "org.eclipse.jgit.ssh.apache";
  version = "5.13.1.202206130422-r";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/jgit/org.eclipse.jgit.ssh.apache/5.13.1.202206130422-r/org.eclipse.jgit.ssh.apache-5.13.1.202206130422-r.pom";
      sha256 = "e7f5c2682e851704ecd76d05e87b021b5b4638203925a9f6a8ee2e44ead5dd9b";
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
