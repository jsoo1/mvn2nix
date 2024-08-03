{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-ssh:pom:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-ssh";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-ssh/1.0-beta-6/wagon-ssh-1.0-beta-6.pom";
      sha256 = "27f386ac369c246cafc1e1cdf91e7edf62b3b84e36e1e246f2052fc6f3b56dda";
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
