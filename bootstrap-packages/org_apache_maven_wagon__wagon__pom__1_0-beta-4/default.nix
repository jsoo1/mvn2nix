{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__8
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon:pom:1.0-beta-4";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon";
  version = "1.0-beta-4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon/1.0-beta-4/wagon-1.0-beta-4.pom";
      sha256 = "6c35daab503ff462f4f63317ae723bd37cae37460ea3576374a347583e7c4327";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
