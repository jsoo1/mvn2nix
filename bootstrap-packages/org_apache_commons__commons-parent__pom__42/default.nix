{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__18
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:42";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "42";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/42/commons-parent-42.pom";
      sha256 = "cd313494c670b483ec256972af1698b330e598f807002354eb765479f604b09c";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
