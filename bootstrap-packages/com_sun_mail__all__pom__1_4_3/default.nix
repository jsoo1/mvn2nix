{
  lib
, pkgs
, patchMavenJar
, javax_activation__activation__1_1
}:
patchMavenJar {
  name = "com.sun.mail:all:pom:1.4.3";
  groupId = "com.sun.mail";
  artifactId = "all";
  version = "1.4.3";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/sun/mail/all/1.4.3/all-1.4.3.pom";
        sha256 = "6f37729b83d22e649c3d69540ce0fcf2e3d04e2d8f06e60c74a4e05c23862138";
      };
    }
  ];
  dependencies = [
    {
      drv = javax_activation__activation__1_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
