package org.apache.maven.lifecycle.providers.packaging;

import java.lang.reflect.InvocationTargetException;
import java.util.Optional;

import org.apache.maven.lifecycle.mapping.LifecycleMapping;
import org.apache.maven.lifecycle.providers.packaging.AbstractLifecycleMappingProvider;

/*
  This arrangement is a sketchy way to prepare for maven 4 where these
  are (thankfully) defined in Java. The alternative (which we also do)
  is to read the file META-INF/plexus/default-bindings.xml in the
  maven-core jar in maven < 4.

  This is how the default lifecycles (like `package` &c) are defined.

  However since we support multiple maven versions via {M2,MAVEN}_HOME
  we have to dynamically load them via a classloader that isn't this one
  with all the maven stuff already defined.
 */
public class DynamicLifecycleMappings {
    public static Optional<LifecycleMapping> getLifecycle(ClassLoader cl, String packaging) throws ClassNotFoundException {
        switch (packaging) {
        case "bom": return Optional.of(getLifecycleMapping(cl, "BomLifecycleMappingProvider"));
        case "ear": return Optional.of(getLifecycleMapping(cl, "EarLifecycleMappingProvider"));
        case "ejb": return Optional.of(getLifecycleMapping(cl, "EjbLifecycleMappingProvider"));
        case "jar": return Optional.of(getLifecycleMapping(cl, "JarLifecycleMappingProvider"));
        case "maven-plugin": return Optional.of(getLifecycleMapping(cl, "MavenPluginLifecycleMappingProvider"));
        case "pom": return Optional.of(getLifecycleMapping(cl, "PomLifecycleMappingProvider"));
        case "rar": return Optional.of(getLifecycleMapping(cl, "RarLifecycleMappingProvider"));
        case "war": return Optional.of(getLifecycleMapping(cl, "WarLifecycleMappingProvider"));
        default: return Optional.empty();
        }
    }

    public static LifecycleMapping getLifecycleMapping(ClassLoader cl, String unqualifiedProviderName) throws ClassNotFoundException {
        String pkg = "org.apache.maven.lifecycle.providers.packaging.";

        try {
            return Class.forName(pkg + unqualifiedProviderName, true, cl)
                .asSubclass(AbstractLifecycleMappingProvider.class)
                .getDeclaredConstructor(new Class<?>[]{})
                .newInstance(new Object[]{})
                .get();
        } catch (
            InstantiationException
            | IllegalAccessException
            | InvocationTargetException
            | NoSuchMethodException
            e
        ) {
            throw new RuntimeException(
                "Upstream implementation of lifecycle "
                + "mappings might have changed. mvn2nix "
                + "might need to be updated: " + e.getMessage(),
                e
            );
        }
    }
}
