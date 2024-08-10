{
  lib
, pkgs
, patchMavenJar
, org_apache_commons__commons-parent__pom__47
}:
patchMavenJar {
  name = "org.apache.commons:commons-lang3:pom:3.8.1";
  groupId = "org.apache.commons";
  artifactId = "commons-lang3";
  version = "3.8.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.8.1/commons-lang3-3.8.1.pom";
      sha256 = "ec8e09f75411685205bd0d9d7872cc3622e67c76df44a0a227b278bea04458d5";
    };
  };
  dependencies = [
    {
      drv = org_apache_commons__commons-parent__pom__47;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
