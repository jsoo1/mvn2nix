{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__1_7_30
}:
patchMavenJar {
  name = "jcl-over-slf4j";
  coordinates = "org.slf4j:jcl-over-slf4j:pom:1.7.30";
  groupId = "org.slf4j";
  artifactId = "jcl-over-slf4j";
  version = "1.7.30";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/jcl-over-slf4j/1.7.30/jcl-over-slf4j-1.7.30.pom";
      sha256 = "16736dd4e71e7097b758be1553506f19a541eeb7766dc36355adaed7a536b455";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__1_7_30;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
