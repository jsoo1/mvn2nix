{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__jar__1_7_30
, org_slf4j__jcl-over-slf4j__pom__1_7_30
}:
patchMavenJar {
  name = "jcl-over-slf4j";
  coordinates = "org.slf4j:jcl-over-slf4j:jar:1.7.30";
  groupId = "org.slf4j";
  artifactId = "jcl-over-slf4j";
  version = "1.7.30";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/jcl-over-slf4j/1.7.30/jcl-over-slf4j-1.7.30.jar";
      sha256 = "71e9ee37b9e4eb7802a2acc5f41728a4cf3915e7483d798db3b4ff2ec8847c50";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__jar__1_7_30;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__jcl-over-slf4j__pom__1_7_30;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
