{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__project__pom__6_1_14
}:
patchMavenJar {
  name = "org.mortbay.jetty:servlet-api-2.5:pom:6.1.14";
  groupId = "org.mortbay.jetty";
  artifactId = "servlet-api-2.5";
  version = "6.1.14";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/servlet-api-2.5/6.1.14/servlet-api-2.5-6.1.14.pom";
      sha256 = "8b715ddbf73bbda6344c223c1398675922e417ba399ed3c7f8d7a94959c0ff81";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__project__pom__6_1_14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
