{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__jar__1_7_36
, org_slf4j__jcl-over-slf4j__pom__1_7_36
}:
patchMavenJar {
  name = "jcl-over-slf4j";
  coordinates = "org.slf4j:jcl-over-slf4j:jar:1.7.36";
  groupId = "org.slf4j";
  artifactId = "jcl-over-slf4j";
  version = "1.7.36";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/jcl-over-slf4j/1.7.36/jcl-over-slf4j-1.7.36.jar";
      sha256 = "ab57ca8fd223772c17365d121f59e94ecbf0ae59d08c03a3cb5b81071c019195";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__jcl-over-slf4j__pom__1_7_36;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
