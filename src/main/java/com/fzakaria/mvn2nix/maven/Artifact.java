package com.fzakaria.mvn2nix.maven;

import com.google.common.base.Strings;

import java.util.Arrays;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Artifact {

    public final Optional<String> group;
    public final Optional<String> name;
    public final Optional<String> version;
    public final Optional<String> classifier;
    public final Optional<String> extension;

    public Artifact(String group, String name, String version, String classifier, String extension) {
        this.group = Optional.ofNullable(group);
        this.name = Optional.ofNullable(name);
        this.version = Optional.ofNullable(version);
        this.classifier = Optional.ofNullable(classifier);
        this.extension = Optional.ofNullable(extension);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Artifact artifact = (Artifact) o;
        return Objects.equals(group, artifact.group) &&
                Objects.equals(name, artifact.name) &&
                Objects.equals(version, artifact.version) &&
                Objects.equals(classifier, artifact.classifier) &&
                Objects.equals(extension, artifact.extension);
    }

    /**
     * Gets the maven repository layout for this artifact
         * @return
     */
    public String getLayout() {
        String basename = Stream.of(name, version, classifier)
            .flatMap(Optional::stream)
            .collect(Collectors.joining("-"));

        String filename = basename + extension.map(e -> "." + e).orElse("");

        return Stream.concat(
            Arrays.stream(group.orElse("").split("\\.")),
            Stream.of(name, version, Optional.of(filename)).flatMap(Optional::stream)
        )
            .collect(Collectors.joining("/"));
    }

    /**
     * Return the canonical name for this artifact.
     * ex. org.apache.commons:commons-parent:pom:22
     */
    public String getCanonicalName() {
        return Stream.of(group, name, extension, classifier, version)
            .flatMap(Optional::stream)
            .map(Strings::emptyToNull)
            .filter(Objects::nonNull)
            .collect(Collectors.joining(":"));
    }

    @Override
    public int hashCode() {
        return Objects.hash(group, name, version, classifier, extension);
    }

    @Override
    public String toString() {
        return getCanonicalName();
    }

    /**
     * Convert a canonical artifact name into an {@link Artifact}
     * ex. org.apache.commons:commons-parent:pom:22
     */
    public static Artifact fromCanonical(String canonical) {
        String[] parts = canonical.split(":");
        switch(parts.length) {
            case 5: {
                return Artifact
                        .builder()
                        .setGroup(parts[0])
                        .setName(parts[1])
                        .setExtension(parts[2])
                        .setClassifier(parts[3])
                        .setVersion(parts[4])
                        .build();
            }
            case 4: {
                return Artifact
                        .builder()
                        .setGroup(parts[0])
                        .setName(parts[1])
                        .setExtension(parts[2])
                        .setVersion(parts[3])
                        .build();
            }
            default: {
                throw new IllegalArgumentException(String.format("%s is not a valid canonical name.", canonical));
            }
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public static class Builder {

        private String group;
        private String name;
        private String version;
        private String classifier;
        private String extension;

        public Builder setGroup(String group) {
            this.group = group;
            return this;
        }

        public Builder setName(String name) {
            this.name = name;
            return this;
        }

        public Builder setVersion(String version) {
            this.version = version;
            return this;
        }

        public Builder setClassifier(String classifier) {
            this.classifier = classifier;
            return this;
        }

        public Builder setExtension(String extension) {
            this.extension = extension;
            return this;
        }

        public Artifact build() {
            return new Artifact(group, name, version, classifier, extension);
        }
    }
}
