{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__22
}:
patchMavenJar {
  name = "org.apache.maven.shared:file-management:pom:3.0.0";
  groupId = "org.apache.maven.shared";
  artifactId = "file-management";
  version = "3.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/file-management/3.0.0/file-management-3.0.0.pom";
      sha256 = "0ad8749b05438dd80b6f421dcad95688c46670f47ff8ef75496d503576640f08";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__22;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
