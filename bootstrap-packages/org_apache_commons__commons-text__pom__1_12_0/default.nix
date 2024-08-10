{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_commons__commons-parent__pom__69
}:
patchMavenJar {
  name = "org.apache.commons:commons-text:pom:1.12.0";
  groupId = "org.apache.commons";
  artifactId = "commons-text";
  version = "1.12.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-text/1.12.0/commons-text-1.12.0.pom";
      sha256 = "b2d4341c921981cb35d5570f4fc9732a08a34b1528dee84c0507c7f2719a334f";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__69;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
