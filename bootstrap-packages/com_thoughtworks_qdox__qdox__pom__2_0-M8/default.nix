{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__9
}:
patchMavenJar {
  name = "com.thoughtworks.qdox:qdox:pom:2.0-M8";
  groupId = "com.thoughtworks.qdox";
  artifactId = "qdox";
  version = "2.0-M8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/thoughtworks/qdox/qdox/2.0-M8/qdox-2.0-M8.pom";
      sha256 = "43853966acfff3f0a34fed1d40e6ab89d17962daa4cc005c33fd1490a78bf8cf";
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
