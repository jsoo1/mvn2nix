{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "spring-framework-bom";
  coordinates = "org.springframework:spring-framework-bom:pom:5.3.6";
  groupId = "org.springframework";
  artifactId = "spring-framework-bom";
  version = "5.3.6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/springframework/spring-framework-bom/5.3.6/spring-framework-bom-5.3.6.pom";
      sha256 = "3ddc5f9c39c080ba0329e75677b8eca25bfea8897a4d399e06b5ff15eaae23a9";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
