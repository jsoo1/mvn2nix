{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-webdav-jackrabbit:pom:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-webdav-jackrabbit";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-webdav-jackrabbit/1.0-beta-6/wagon-webdav-jackrabbit-1.0-beta-6.pom";
      sha256 = "efb732539f6f5314ba05aa2d2c10f40146e50f8a2fbc6261722f566cab47bcaa";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
