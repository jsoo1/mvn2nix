{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__36
}:
patchMavenJar {
  name = "org.apache.maven.shared:file-management:pom:3.1.0";
  groupId = "org.apache.maven.shared";
  artifactId = "file-management";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/file-management/3.1.0/file-management-3.1.0.pom";
      sha256 = "5e93a63b3042023e558dcbeb19914ce82e6a6fbccdbd68797f80b135121a8bde";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__36;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
