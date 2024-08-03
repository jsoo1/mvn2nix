{
  lib
, pkgs
, patchMavenJar
, org_apache_jackrabbit__jackrabbit-jcr-commons__pom__1_5_0
}:
patchMavenJar {
  name = "org.apache.jackrabbit:jackrabbit-jcr-commons:jar:1.5.0";
  groupId = "org.apache.jackrabbit";
  artifactId = "jackrabbit-jcr-commons";
  version = "1.5.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/jackrabbit/jackrabbit-jcr-commons/1.5.0/jackrabbit-jcr-commons-1.5.0.jar";
      sha256 = "34459359f8a5b22447272125fdd5df4bab4d4d831010cdea60c4f7acdcf7413b";
    };
  };
  dependencies = [
    {
      drv = org_apache_jackrabbit__jackrabbit-jcr-commons__pom__1_5_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
