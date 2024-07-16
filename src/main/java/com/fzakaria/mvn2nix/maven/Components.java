package com.fzakaria.mvn2nix.maven;

import javax.inject.Named;
// import org.apache.maven.model.profile.ProfileSelector;
// import org.apache.maven.model.profile.DefaultProfileSelector;
// import org.apache.maven.model.profile.activation.JdkVersionProfileActivator;
// import org.apache.maven.model.profile.activation.OperatingSystemProfileActivator;
// import org.apache.maven.model.profile.activation.OperatingSystemProfileActivator;
// import org.apache.maven.model.profile.activation.ProfileActivator;
// import org.apache.maven.model.profile.activation.PropertyProfileActivator;
// import org.apache.maven.model.profile.activation.FileProfileActivator;
import org.apache.maven.project.ProjectBuilder;
import org.apache.maven.project.DefaultProjectBuilder;

@Named
public class Components extends com.google.inject.AbstractModule {
    public void configure() {
        bind(ProjectBuilder.class).to(DefaultProjectBuilder.class);
    }

    // <component-set>
    //     <components>
    //         <component>
    //             <role>org.apache.maven.project.ProjectBuilder</role>
    //             <implementation>org.apache.maven.project.DefaultProjectBuilder</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.building.ModelBuilder</role>
    //             <implementation>org.apache.maven.model.building.DefaultModelBuilder</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.composition.DependencyManagementImporter</role>
    //             <implementation>org.apache.maven.model.composition.DefaultDependencyManagementImporter</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.management.DependencyManagementInjector</role>
    //             <implementation>org.apache.maven.model.management.DefaultDependencyManagementInjector</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.inheritance.InheritanceAssembler</role>
    //             <implementation>org.apache.maven.model.inheritance.DefaultInheritanceAssembler</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.interpolation.ModelInterpolator</role>
    //             <implementation>org.apache.maven.model.interpolation.StringVisitorModelInterpolator</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.normalization.ModelNormalizer</role>
    //             <implementation>org.apache.maven.model.normalization.DefaultModelNormalizer</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.path.ModelPathTranslator</role>
    //             <implementation>org.apache.maven.model.path.DefaultModelPathTranslator</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.building.ModelProcessor</role>
    //             <implementation>org.apache.maven.model.building.DefaultModelProcessor</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.path.ModelUrlNormalizer</role>
    //             <implementation>org.apache.maven.model.path.DefaultModelUrlNormalizer</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.validation.ModelValidator</role>
    //             <implementation>org.apache.maven.model.validation.DefaultModelValidator</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.path.PathTranslator</role>
    //             <implementation>org.apache.maven.model.path.DefaultPathTranslator</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.plugin.PluginConfigurationExpander</role>
    //             <implementation>org.apache.maven.model.plugin.DefaultPluginConfigurationExpander</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.management.PluginManagementInjector</role>
    //             <implementation>org.apache.maven.model.management.DefaultPluginManagementInjector</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.profile.ProfileInjector</role>
    //             <implementation>org.apache.maven.model.profile.DefaultProfileInjector</implementation>
    //         </component>
    //         <!-- Made our own factory because of a list field :face_with_rolling_eyes: -->
    //         <component>
    //             <role>org.apache.maven.model.profile.ProfileSelector</role>
    //             <implementation>org.apache.maven.model.profile.DefaultProfileSelector</implementation>
    //             <component-factory>com.fzakaria.mvn2nix.maven.ProfileSelectorFactory</component-factory>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.plugin.ReportConfigurationExpander</role>
    //             <implementation>org.apache.maven.model.plugin.DefaultReportConfigurationExpander</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.plugin.ReportingConverter</role>
    //             <implementation>org.apache.maven.model.plugin.DefaultReportingConverter</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.superpom.SuperPomProvider</role>
    //             <implementation>org.apache.maven.model.superpom.DefaultSuperPomProvider</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.interpolation.ModelVersionProcessor</role>
    //             <implementation>org.apache.maven.model.interpolation.DefaultModelVersionProcessor</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.path.UrlNormalizer</role>
    //             <implementation>org.apache.maven.model.path.DefaultUrlNormalizer</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.locator.ModelLocator</role>
    //             <implementation>org.apache.maven.model.locator.DefaultModelLocator</implementation>
    //         </component>
    //         <component>
    //             <role>org.apache.maven.model.io.ModelReader</role>
    //             <implementation>org.apache.maven.model.io.DefaultModelReader</implementation>
    //         </component>
    //     </components>
    // </component-set>
}
