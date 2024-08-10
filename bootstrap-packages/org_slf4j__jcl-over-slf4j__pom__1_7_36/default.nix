{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__1_7_36
}:
patchMavenJar {
  name = "org.slf4j:jcl-over-slf4j:pom:1.7.36";
  groupId = "org.slf4j";
  artifactId = "jcl-over-slf4j";
  version = "1.7.36";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/jcl-over-slf4j/1.7.36/jcl-over-slf4j-1.7.36.pom";
      sha256 = "bd96243d7d4218cd7cc7d45c0e30fa13480a1a4f91d356edd7dfe93f1ffb68e6";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__1_7_36;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
