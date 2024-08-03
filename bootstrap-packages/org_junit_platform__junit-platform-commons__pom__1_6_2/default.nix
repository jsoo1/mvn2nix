{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_6_2
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-commons:pom:1.6.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-commons";
  version = "1.6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-commons/1.6.2/junit-platform-commons-1.6.2.pom";
      sha256 = "c5d762d66dfea70f38df383e70b7ca5cfd2f643f0cad188800994b7fb09fbc02";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
