{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__5
, org_apache_maven__maven-parent__pom__11
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon:pom:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon";
  version = "1.0-beta-6";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon/1.0-beta-6/wagon-1.0-beta-6.pom";
        sha256 = "025caec7c56a0cb4d86c45bc18ac3e23dba291e22ebceb76302a9a9b9b7183cc";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
