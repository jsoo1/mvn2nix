{
  lib
, pkgs
, patchMavenJar
, org_hamcrest__hamcrest-core__jar__1_3
, junit__junit__pom__4_13_2
}:
patchMavenJar {
  name = "junit";
  coordinates = "junit:junit:jar:4.13.2";
  groupId = "junit";
  artifactId = "junit";
  version = "4.13.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/junit/junit/4.13.2/junit-4.13.2.jar";
      sha256 = "8e495b634469d64fb8acfa3495a065cbacc8a0fff55ce1e31007be4c16dc57d3";
    };
  };
  dependencies = [
    {
      drv = org_hamcrest__hamcrest-core__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__pom__4_13_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
