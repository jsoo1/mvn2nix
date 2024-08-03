{
  lib
, pkgs
, patchMavenJar
, com_jcraft__jsch__jar__0_1_38
, org_codehaus_plexus__plexus-utils__jar__1_4_2
, org_apache_maven_wagon__wagon-ssh-common__jar__1_0-beta-6
, org_codehaus_plexus__plexus-interactivity-api__jar__1_0-alpha-6
, org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6
, org_apache_maven_wagon__wagon-ssh__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-ssh:jar:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-ssh";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-ssh/1.0-beta-6/wagon-ssh-1.0-beta-6.jar";
      sha256 = "5465b4a6192d2f691b211f5bd17518e7949177eff040ea709f3acfce79ce1454";
    };
  };
  dependencies = [
    {
      drv = com_jcraft__jsch__jar__0_1_38;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-ssh-common__jar__1_0-beta-6;
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
      drv = org_apache_maven_wagon__wagon-ssh__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
