{
  lib
, pkgs
, patchMavenJar
, javax_servlet__jstl__pom__1_1_2
}:
patchMavenJar {
  name = "jstl";
  coordinates = "javax.servlet:jstl:jar:1.1.2";
  groupId = "javax.servlet";
  artifactId = "jstl";
  version = "1.1.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/servlet/jstl/1.1.2/jstl-1.1.2.jar";
      sha256 = "11625cc4f64165de32eba059e310a7b7caf89dfa3e4c34432a222833320d9208";
    };
  };
  dependencies = [
    {
      drv = javax_servlet__jstl__pom__1_1_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
