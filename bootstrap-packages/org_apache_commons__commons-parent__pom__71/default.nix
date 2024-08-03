{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_11_0-M2
, org_apache__apache__pom__32
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:71";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "71";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/71/commons-parent-71.pom";
      sha256 = "95b7be70f316ae4ca22f6fbdd08de2182e87cd874a650de7c3d3386a747a82a3";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_11_0-M2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
