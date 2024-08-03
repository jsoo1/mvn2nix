{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6
, org_codehaus_plexus__plexus-utils__jar__1_4_2
, org_apache_maven_wagon__wagon-file__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-file:jar:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-file";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-file/1.0-beta-6/wagon-file-1.0-beta-6.jar";
      sha256 = "7298feeb36ff14dd933c38e62585fb9973fea32fb3c4bc5379428cb1aac5dd3c";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-file__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
