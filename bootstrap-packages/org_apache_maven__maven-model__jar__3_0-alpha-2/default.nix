{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_5_6
, org_apache_maven__maven-model__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:jar:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.0-alpha-2/maven-model-3.0-alpha-2.jar";
      sha256 = "13812c047ff62a964e0f167ca34ae7e49269f59d91a9be33171cb1b07e828d92";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__pom__3_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
