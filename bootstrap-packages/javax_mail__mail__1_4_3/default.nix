{
  lib
, pkgs
, patchMavenJar
, com_sun_mail__all__pom__1_4_3
, javax_activation__activation__1_1
}:
patchMavenJar {
  name = "javax.mail:mail:1.4.3";
  groupId = "javax.mail";
  artifactId = "mail";
  version = "1.4.3";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/javax/mail/mail/1.4.3/mail-1.4.3.jar";
        sha256 = "1013bdb70140467ef9a1d7dd9d1b71d4e82e6a27f361be41b4598a3c1b1a9f12";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/javax/mail/mail/1.4.3/mail-1.4.3.pom";
        sha256 = "f0c0dc378dcc81e082dd5e330e1240eee12ace965a18c7f54c7b4ee1d56ec2ca";
      };
    }
  ];
  dependencies = [
    {
      drv = com_sun_mail__all__pom__1_4_3;
      scope = "test";
      optional = false;
    }
    {
      drv = javax_activation__activation__1_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
