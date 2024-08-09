{ lib
, stdenv
, buildMavenPackage
, jre
, maven
, mvn2nix
, makeWrapper
, nix-gitignore
}:

let
  # Normal usage probably should use the output of
  # `mvn2nix --output-type NIX --output-directory bootstrap-dir pom.nix`
  #
  # This is just like this to make everything fit neatly under
  # `mvn2nix` in the overlay
  inherit (mvn2nix.bootstrapPackages)
    eu_maveniverse_maven_mima_runtime__standalone-static-uber__jar__2_4_15
    commons-logging__commons-logging__jar__1_3_3
    org_slf4j__slf4j-simple__jar__2_0_13
    eu_maveniverse_maven_mima__context__jar__2_4_15
    org_apache_maven_resolver__maven-resolver-api__jar__1_9_20
    org_apache_maven_resolver__maven-resolver-util__jar__1_9_20
    org_apache_maven__maven-core__jar__3_9_8
    org_apache_maven_shared__maven-shared-utils__jar__3_4_2
    org_apache_maven_shared__maven-invoker__jar__3_0_1
    com_google_guava__guava__jar__33_2_1-jre
    com_squareup_moshi__moshi__jar__1_10_0
    info_picocli__picocli__jar__4_5_0
    org_slf4j__slf4j-api__jar__2_0_13
    org_junit_jupiter__junit-jupiter__jar__5_6_2
    org_junit_jupiter__junit-jupiter-api__jar__5_6_2
    org_assertj__assertj-core__jar__3_16_1
    org_apache_maven_surefire__surefire-junit-platform__jar__3_0_0-M5
    org_apache_maven_plugins__maven-compiler-plugin__jar__3_8_1
    org_apache_maven_plugins__maven-jar-plugin__jar__3_2_0
    org_apache_maven_plugins__maven-failsafe-plugin__jar__3_0_0-M5
    org_apache_maven_plugins__maven-surefire-plugin__jar__3_0_0-M5
    org_ow2_asm__asm__jar__6_2
    org_apache_maven_plugins__maven-resources-plugin__jar__3_3_1
    org_apache_maven_plugins__maven-jar-plugin__jar__3_4_1
    org_apache_maven_plugins__maven-compiler-plugin__jar__3_13_0
    org_apache_maven_plugins__maven-surefire-plugin__jar__3_2_5
    org_apache_maven_plugins__maven-install-plugin__jar__3_1_1
    org_apache_maven_plugins__maven-deploy-plugin__jar__3_1_1
    info_picocli__picocli-codegen__jar__4_5_0
    ;

  artifactId = "mvn2nix";

  version = "0.1";
in

buildMavenPackage {
  name = "com.fzakaria:mvn2nix:jar:0.1";
  inherit artifactId version;
  groupId = "com.fzakaria";
  classifier = null;

  src = nix-gitignore.gitignoreSource [ ] ./.;

  nativeBuildInputs = [ makeWrapper ];

  postInstall = ''
    # create a wrapper that will automatically set the classpath
    # this should be the paths from the dependency derivation
    makeWrapper ${jre}/bin/java $out/bin/${artifactId} \
          --add-flags "-jar $out/share/java/${artifactId}-${version}.jar" \
          --set M2_HOME ${maven} \
          --set JAVA_HOME ${if stdenv.hostPlatform.isDarwin
           then "${jre}/jre"
           else "${jre.jre}/lib/openjdk/jre"}

  '';

  meta = with lib; {
    description =
      "Easily package your Java applications for the Nix package manager.";
    homepage = "https://github.com/fzakaria/mvn2nix";
    license = licenses.mit;
    maintainers = [ "farid.m.zakaria@gmail.com" ];
    platforms = platforms.all;
    mainProgram = "mvn2nix";
  };

  dependencies = [
    {
      drv = eu_maveniverse_maven_mima_runtime__standalone-static-uber__jar__2_4_15;
      scope = "runtime";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_3_3;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-simple__jar__2_0_13;
      scope = "runtime";
      optional = false;
    }
    {
      drv = eu_maveniverse_maven_mima__context__jar__2_4_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__jar__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-invoker__jar__3_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__guava__jar__33_2_1-jre;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_squareup_moshi__moshi__jar__1_10_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = info_picocli__picocli__jar__4_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__2_0_13;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_jupiter__junit-jupiter__jar__5_6_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_junit_jupiter__junit-jupiter-api__jar__5_6_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_assertj__assertj-core__jar__3_16_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-junit-platform__jar__3_0_0-M5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-compiler-plugin__jar__3_8_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-jar-plugin__jar__3_2_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-failsafe-plugin__jar__3_0_0-M5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-surefire-plugin__jar__3_0_0-M5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_ow2_asm__asm__jar__6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-resources-plugin__jar__3_3_1;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-jar-plugin__jar__3_4_1;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-compiler-plugin__jar__3_13_0;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-surefire-plugin__jar__3_2_5;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-install-plugin__jar__3_1_1;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-deploy-plugin__jar__3_1_1;
      scope = "provided";
      optional = false;
    }
    {
      drv = info_picocli__picocli-codegen__jar__4_5_0;
      scope = "compile";
      optional = false;
    }
  ];
}
