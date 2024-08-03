{
  lib
, pkgs
, patchMavenJar
, org_sonatype_sisu__sisu-guice__jar__noaop__2_1_7
, org_sonatype_sisu__sisu-inject-bean__pom__1_4_2
}:
patchMavenJar {
  name = "org.sonatype.sisu:sisu-inject-bean:jar:1.4.2";
  groupId = "org.sonatype.sisu";
  artifactId = "sisu-inject-bean";
  version = "1.4.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/sisu/sisu-inject-bean/1.4.2/sisu-inject-bean-1.4.2.jar";
      sha256 = "fb3160e1e3a7852b441016dbcc97a34e3cf4eeb8ceb9e82edf2729439858f080";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_sisu__sisu-guice__jar__noaop__2_1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-bean__pom__1_4_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
