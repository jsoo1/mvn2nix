{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_apache_maven__maven-repository-metadata__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-repository-metadata:jar:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-repository-metadata";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-repository-metadata/3.9.8/maven-repository-metadata-3.9.8.jar";
      sha256 = "1f3f29a6bd8a35c92a6e3cbb5992be74863868fd962e90457c33d28af25472f2";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
