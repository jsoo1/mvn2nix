{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__26
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon:pom:2.10";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon";
  version = "2.10";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon/2.10/wagon-2.10.pom";
      sha256 = "82beff347a31987a602cb9595cea83fe8c7264f76fe3856fd8c539a1d412704b";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__26;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
