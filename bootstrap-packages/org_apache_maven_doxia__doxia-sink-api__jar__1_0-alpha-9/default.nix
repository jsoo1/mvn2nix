{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sink-api__pom__1_0-alpha-9
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-sink-api:jar:1.0-alpha-9";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.0-alpha-9";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.0-alpha-9/doxia-sink-api-1.0-alpha-9.jar";
      sha256 = "54d31281b701a78bd52f62b145a596d12ffabef642fb0bd2d168ee3d035ea1d4";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sink-api__pom__1_0-alpha-9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
