{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__9
}:
patchMavenJar {
  name = "com.thoughtworks.qdox:qdox:pom:2.0.3";
  groupId = "com.thoughtworks.qdox";
  artifactId = "qdox";
  version = "2.0.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/thoughtworks/qdox/qdox/2.0.3/qdox-2.0.3.pom";
      sha256 = "e7ebaead3c95e74934451fc5b5ae9d02066303db67430f59fe219714efcf3bf3";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
