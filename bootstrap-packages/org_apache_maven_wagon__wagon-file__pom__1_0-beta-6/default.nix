{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-file:pom:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-file";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-file/1.0-beta-6/wagon-file-1.0-beta-6.pom";
      sha256 = "f7524cfffc9773ea75a9f7379139f00a57355e411009ea9529b7adf7ef93fde8";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
