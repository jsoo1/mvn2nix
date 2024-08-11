{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__5
}:
patchMavenJar {
  name = "JavaEWAH";
  coordinates = "com.googlecode.javaewah:JavaEWAH:pom:1.1.13";
  groupId = "com.googlecode.javaewah";
  artifactId = "JavaEWAH";
  version = "1.1.13";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/googlecode/javaewah/JavaEWAH/1.1.13/JavaEWAH-1.1.13.pom";
      sha256 = "9725b1fe9c6810d977750bb84415ea1082c4b488d4a839f9704bb4f5e8fc17f4";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
