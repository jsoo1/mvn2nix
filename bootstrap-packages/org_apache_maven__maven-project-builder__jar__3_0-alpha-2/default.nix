{
  lib
, pkgs
, patchMavenJar
, org_sonatype_spice__model-builder__jar__1_3
, org_codehaus_woodstox__wstx-asl__jar__3_2_6
, stax__stax-api__jar__1_0_1
, org_apache_maven__maven-project-builder__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-project-builder:jar:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-project-builder";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-project-builder/3.0-alpha-2/maven-project-builder-3.0-alpha-2.jar";
      sha256 = "f3905cb8c223c33f6121bc937b66a2f58653be766042fb6e924b9882c555d891";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_spice__model-builder__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_woodstox__wstx-asl__jar__3_2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = stax__stax-api__jar__1_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-project-builder__pom__3_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
