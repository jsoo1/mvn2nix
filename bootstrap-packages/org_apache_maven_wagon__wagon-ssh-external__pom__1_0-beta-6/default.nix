{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-ssh-external:pom:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-ssh-external";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-ssh-external/1.0-beta-6/wagon-ssh-external-1.0-beta-6.pom";
      sha256 = "4b1b89f45977c97dd06e049de3b2a546b001c4478f2152b01b5a38226f13fb2a";
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
