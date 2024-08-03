{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_4_2
, org_apache_maven_wagon__wagon-ssh-common__jar__1_0-beta-6
, org_codehaus_plexus__plexus-interactivity-api__jar__1_0-alpha-6
, org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6
, org_apache_maven_wagon__wagon-ssh-external__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-ssh-external:jar:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-ssh-external";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-ssh-external/1.0-beta-6/wagon-ssh-external-1.0-beta-6.jar";
      sha256 = "3251974da3988d1db453954a66541aa11d2224b5509065c6fec69912793707ab";
    };
  };
  dependencies = [
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
      drv = org_apache_maven_wagon__wagon-ssh-external__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
