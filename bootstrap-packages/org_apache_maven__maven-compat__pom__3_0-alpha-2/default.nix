{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-compat:pom:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-compat";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-compat/3.0-alpha-2/maven-compat-3.0-alpha-2.pom";
      sha256 = "4196effcccdbe4ef8dc625e5dd8e13284971dd884dc80109cb1f44d76dd0d7e7";
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
