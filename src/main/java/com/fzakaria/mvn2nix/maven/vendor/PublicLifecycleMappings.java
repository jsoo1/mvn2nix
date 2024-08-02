package org.apache.maven.lifecycle.providers.packaging;

import java.util.Optional;

import org.apache.maven.lifecycle.mapping.LifecycleMapping;

public class PublicLifecycleMappings {
    public static final BomLifecycleMappingProvider bom = new BomLifecycleMappingProvider();
    public static final EarLifecycleMappingProvider ear = new EarLifecycleMappingProvider();
    public static final EjbLifecycleMappingProvider ejb = new EjbLifecycleMappingProvider();
    public static final JarLifecycleMappingProvider jar = new JarLifecycleMappingProvider();
    public static final MavenPluginLifecycleMappingProvider mavenPlugin = new MavenPluginLifecycleMappingProvider();
    public static final PomLifecycleMappingProvider pom = new PomLifecycleMappingProvider();
    public static final RarLifecycleMappingProvider rar = new RarLifecycleMappingProvider();
    public static final WarLifecycleMappingProvider war = new WarLifecycleMappingProvider();

    public static Optional<LifecycleMapping> getLifecycle(String packaging) {
        switch (packaging) {
        case "bom": return Optional.of(bom).map(x -> x.get());
        case "ear": return Optional.of(ear).map(x -> x.get());
        case "ejb": return Optional.of(ejb).map(x -> x.get());
        case "jar": return Optional.of(jar).map(x -> x.get());
        case "maven-plugin": return Optional.of(mavenPlugin).map(x -> x.get());
        case "pom": return Optional.of(pom).map(x -> x.get());
        case "rar": return Optional.of(rar).map(x -> x.get());
        case "war": return Optional.of(war).map(x -> x.get());
        default: return Optional.empty();
        }
    }
}
