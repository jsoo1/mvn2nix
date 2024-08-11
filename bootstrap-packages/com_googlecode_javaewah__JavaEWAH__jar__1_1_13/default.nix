{
  lib
, pkgs
, patchMavenJar
, com_googlecode_javaewah__JavaEWAH__pom__1_1_13
}:
patchMavenJar {
  name = "JavaEWAH";
  coordinates = "com.googlecode.javaewah:JavaEWAH:jar:1.1.13";
  groupId = "com.googlecode.javaewah";
  artifactId = "JavaEWAH";
  version = "1.1.13";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/googlecode/javaewah/JavaEWAH/1.1.13/JavaEWAH-1.1.13.jar";
      sha256 = "4c0fda2b1d317750d7ea324e36c70b2bc48310c0aaae67b98df0915d696d7111";
    };
  };
  dependencies = [
    {
      drv = com_googlecode_javaewah__JavaEWAH__pom__1_1_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
