package com.fzakaria.mvn2nix.maven.vendor;

import com.fzakaria.mvn2nix.maven.vendor.BuildModelSourceTransformer;
import com.fzakaria.mvn2nix.maven.vendor.DefaultModelVersionParser;
import com.google.inject.AbstractModule;
import javax.inject.Named;
import org.apache.maven.api.services.model.ModelVersionParser;
import org.apache.maven.model.building.DefaultModelBuilder;
import org.apache.maven.model.building.DefaultModelProcessor;
import org.apache.maven.model.building.ModelBuilder;
import org.apache.maven.model.building.ModelProcessor;
import org.apache.maven.model.building.ModelSourceTransformer;
import org.apache.maven.model.composition.DefaultDependencyManagementImporter;
import org.apache.maven.model.composition.DependencyManagementImporter;
import org.apache.maven.model.inheritance.DefaultInheritanceAssembler;
import org.apache.maven.model.inheritance.InheritanceAssembler;
import org.apache.maven.model.interpolation.DefaultModelVersionProcessor;
import org.apache.maven.model.interpolation.ModelInterpolator;
import org.apache.maven.model.interpolation.ModelVersionProcessor;
import org.apache.maven.model.interpolation.StringVisitorModelInterpolator;
import org.apache.maven.model.io.DefaultModelReader;
import org.apache.maven.model.io.ModelReader;
import org.apache.maven.model.locator.DefaultModelLocator;
import org.apache.maven.model.locator.ModelLocator;
import org.apache.maven.model.management.DefaultDependencyManagementInjector;
import org.apache.maven.model.management.DefaultPluginManagementInjector;
import org.apache.maven.model.management.DependencyManagementInjector;
import org.apache.maven.model.management.PluginManagementInjector;
import org.apache.maven.model.normalization.DefaultModelNormalizer;
import org.apache.maven.model.normalization.ModelNormalizer;
import org.apache.maven.model.path.DefaultModelPathTranslator;
import org.apache.maven.model.path.DefaultModelUrlNormalizer;
import org.apache.maven.model.path.DefaultPathTranslator;
import org.apache.maven.model.path.DefaultUrlNormalizer;
import org.apache.maven.model.path.ModelPathTranslator;
import org.apache.maven.model.path.ModelUrlNormalizer;
import org.apache.maven.model.path.PathTranslator;
import org.apache.maven.model.path.UrlNormalizer;
import org.apache.maven.model.plugin.DefaultPluginConfigurationExpander;
import org.apache.maven.model.plugin.DefaultReportConfigurationExpander;
import org.apache.maven.model.plugin.PluginConfigurationExpander;
import org.apache.maven.model.plugin.ReportConfigurationExpander;
import org.apache.maven.model.profile.DefaultProfileInjector;
import org.apache.maven.model.profile.DefaultProfileSelector;
import org.apache.maven.model.profile.ProfileInjector;
import org.apache.maven.model.profile.ProfileSelector;
import org.apache.maven.model.resolution.ModelResolver;
import org.apache.maven.model.root.DefaultRootLocator;
import org.apache.maven.model.root.RootLocator;
import org.apache.maven.model.superpom.DefaultSuperPomProvider;
import org.apache.maven.model.superpom.SuperPomProvider;
import org.apache.maven.model.validation.DefaultModelValidator;
import org.apache.maven.model.validation.ModelValidator;
import org.apache.maven.project.DefaultProjectBuilder;
import org.apache.maven.project.DefaultProjectBuildingHelper;
import org.apache.maven.project.ProjectBuilder;
import org.apache.maven.project.ProjectBuildingHelper;
import org.apache.maven.project.ProjectModelResolver;
import org.eclipse.aether.util.version.GenericVersionScheme;
import org.eclipse.aether.version.VersionScheme;

@Named
public class Components extends AbstractModule {
    public void configure() {
        bind(ProjectBuilder.class).to(DefaultProjectBuilder.class);
        bind(ModelBuilder.class).to(DefaultModelBuilder.class);
        bind(ModelProcessor.class).to(DefaultModelProcessor.class);
        bind(ProjectBuildingHelper.class).to(DefaultProjectBuildingHelper.class);
        bind(ModelLocator.class).to(DefaultModelLocator.class);
        bind(ModelReader.class).to(DefaultModelReader.class);
        bind(ModelSourceTransformer.class).to(BuildModelSourceTransformer.class);
        bind(ModelValidator.class).to(DefaultModelValidator.class);
        bind(ModelVersionProcessor.class).to(DefaultModelVersionProcessor.class);
        bind(ModelNormalizer.class).to(DefaultModelNormalizer.class);
        bind(ModelInterpolator.class).to(StringVisitorModelInterpolator.class);
        bind(PathTranslator.class).to(DefaultPathTranslator.class);
        bind(UrlNormalizer.class).to(DefaultUrlNormalizer.class);
        bind(RootLocator.class).to(DefaultRootLocator.class);
        bind(ModelPathTranslator.class).to(DefaultModelPathTranslator.class);
        bind(ModelUrlNormalizer.class).to(DefaultModelUrlNormalizer.class);
        bind(SuperPomProvider.class).to(DefaultSuperPomProvider.class);
        bind(InheritanceAssembler.class).to(DefaultInheritanceAssembler.class);
        bind(ProfileSelector.class).to(DefaultProfileSelector.class);
        bind(ProfileInjector.class).to(DefaultProfileInjector.class);
        bind(PluginManagementInjector.class).to(DefaultPluginManagementInjector.class);
        bind(DependencyManagementInjector.class).to(DefaultDependencyManagementInjector.class);
        bind(DependencyManagementImporter.class).to(DefaultDependencyManagementImporter.class);
        // FIXME(jsoo1): Why is this nowhere to be found? It is the
        // only @Nullable DefaultModelBuilder param, so this should be ok?
        // bind(LifecycleBindingsInjector.class).to(DefaultLifecycleBindingsInjector.class);
        bind(PluginConfigurationExpander.class).to(DefaultPluginConfigurationExpander.class);
        bind(ReportConfigurationExpander.class).to(DefaultReportConfigurationExpander.class);
        bind(ModelVersionParser.class).to(DefaultModelVersionParser.class);
        bind(VersionScheme.class).to(GenericVersionScheme.class);
        bind(ModelResolver.class).to(ProjectModelResolver.class);
    }
}
