{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__jar__1_9_18
, org_apache_maven_resolver__maven-resolver-util__pom__1_9_18
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-util:jar:1.9.18";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-util";
  version = "1.9.18";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-util/1.9.18/maven-resolver-util-1.9.18.jar";
      sha256 = "2eb0ea667bc489384478231dda7516407d4b5b22a138077229871de9362a7ae2";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_9_18;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__pom__1_9_18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
