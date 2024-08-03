{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-aether-provider:pom:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-aether-provider";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-aether-provider/3.1.0/maven-aether-provider-3.1.0.pom";
      sha256 = "ba2de3a380f2319784a50b4072c095fd79b6d8e974ddc2dda440dddcd6c3c454";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
