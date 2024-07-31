{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0
, org_apache_maven__maven-parent__pom__15
, org_apache__apache__pom__6
, org_codehaus_plexus__plexus-utils__2_0_4
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "3.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.0/maven-model-3.0.jar";
        sha256 = "27e426d73f8662b47f60df0e43439b3dec2909c42b89175a6e4431dfed3edafd";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.0/maven-model-3.0.pom";
        sha256 = "3d6fdeb72b2967f1fa2784134fb832d08d8d6e879b7ace7712f2c7281994fc1e";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__15;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__2_0_4;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
