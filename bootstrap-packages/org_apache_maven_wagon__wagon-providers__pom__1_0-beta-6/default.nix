{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-providers:pom:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-providers";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-providers/1.0-beta-6/wagon-providers-1.0-beta-6.pom";
      sha256 = "340422be8f3e3c847a0a0bf944296774f6db81f2fa8b34912bc931a112a26919";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
