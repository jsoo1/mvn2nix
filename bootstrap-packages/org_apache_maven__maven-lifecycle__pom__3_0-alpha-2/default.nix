{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-lifecycle:pom:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-lifecycle";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-lifecycle/3.0-alpha-2/maven-lifecycle-3.0-alpha-2.pom";
      sha256 = "1c3a6ab23bac3e3d5bab83a80bb3f7cb98657b388c71da61ca3760b80c392dcd";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
