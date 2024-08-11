{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.eclipse.jgit-parent";
  coordinates = "org.eclipse.jgit:org.eclipse.jgit-parent:pom:5.13.1.202206130422-r";
  groupId = "org.eclipse.jgit";
  artifactId = "org.eclipse.jgit-parent";
  version = "5.13.1.202206130422-r";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/jgit/org.eclipse.jgit-parent/5.13.1.202206130422-r/org.eclipse.jgit-parent-5.13.1.202206130422-r.pom";
      sha256 = "de65fc76ed8f44a57785ee164918dc3d4f55ee3fea6a47bc7cb1baa19ef1bc83";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
