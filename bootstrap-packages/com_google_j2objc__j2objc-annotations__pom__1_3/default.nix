{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "com.google.j2objc:j2objc-annotations:pom:1.3";
  groupId = "com.google.j2objc";
  artifactId = "j2objc-annotations";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/j2objc/j2objc-annotations/1.3/j2objc-annotations-1.3.pom";
      sha256 = "5faca824ba115bee458730337dfdb2fcea46ba2fd774d4304edbf30fa6a3f055";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
