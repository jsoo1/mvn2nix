{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-toolchain:pom:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-toolchain";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-toolchain/3.0-alpha-2/maven-toolchain-3.0-alpha-2.pom";
      sha256 = "764a6ebbc61180bdfd5ab35cb9d8460eadcbc05ceea1fbfbcd355f34f8f19c19";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
