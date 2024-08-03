{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_4_2
, org_codehaus_plexus__plexus-interactivity-api__jar__1_0-alpha-6
, org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6
, org_apache_maven_wagon__wagon-ssh-common__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-ssh-common:jar:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-ssh-common";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-ssh-common/1.0-beta-6/wagon-ssh-common-1.0-beta-6.jar";
      sha256 = "456a1abdab3c3984812f6a25e3f3e21aa6aa6f8a5d0db98d32cbc20f95c301c0";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interactivity-api__jar__1_0-alpha-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-ssh-common__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
