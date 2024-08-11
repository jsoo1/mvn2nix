{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__42
}:
patchMavenJar {
  name = "commons-lang3";
  coordinates = "org.apache.commons:commons-lang3:pom:3.7";
  groupId = "org.apache.commons";
  artifactId = "commons-lang3";
  version = "3.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.7/commons-lang3-3.7.pom";
      sha256 = "16bf63e86f5ea0404e89ed0f654b0915bea0030129aea9531d74369b71f764da";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__42;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
