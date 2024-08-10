{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-lang3__pom__3_7
}:
patchMavenJar {
  name = "org.apache.commons:commons-lang3:jar:3.7";
  groupId = "org.apache.commons";
  artifactId = "commons-lang3";
  version = "3.7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.7/commons-lang3-3.7.jar";
      sha256 = "6e8dc31e046508d9953c96534edf0c2e0bfe6f468966b5b842b3f87e43b6a847";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-lang3__pom__3_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
