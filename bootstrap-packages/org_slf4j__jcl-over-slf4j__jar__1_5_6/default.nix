{
  lib
, pkgs
, patchMavenJar
, org_slf4j__jcl-over-slf4j__pom__1_5_6
}:
patchMavenJar {
  name = "org.slf4j:jcl-over-slf4j:jar:1.5.6";
  groupId = "org.slf4j";
  artifactId = "jcl-over-slf4j";
  version = "1.5.6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/jcl-over-slf4j/1.5.6/jcl-over-slf4j-1.5.6.jar";
      sha256 = "03e1898e878806cace2028d9b42cda3377d70ceb2b06253c43f6a587a0f67067";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__jcl-over-slf4j__pom__1_5_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
