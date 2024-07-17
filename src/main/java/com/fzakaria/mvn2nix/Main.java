package com.fzakaria.mvn2nix;

import eu.maveniverse.maven.mima.context.ContextOverrides;
import eu.maveniverse.maven.mima.context.Runtimes;
import com.fzakaria.mvn2nix.cmd.LoggingMixin;
import com.fzakaria.mvn2nix.cmd.Maven2nix;
import com.fzakaria.mvn2nix.cmd.PrintExceptionMessageHandler;
import javax.inject.Named;
import org.eclipse.sisu.space.SpaceModule;
import org.eclipse.sisu.space.URLClassSpace;
import org.eclipse.sisu.wire.WireModule;
import picocli.CommandLine;

import java.lang.ClassLoader;

public class Main {
    static {
        // programmatic initialization; must be done before calling LogManager.getLogger()
        LoggingMixin.initializeLog4j();
    }

    public static void main(String[] args) {
        ContextOverrides overrides = ContextOverrides
            .create()
            .withUserSettings(true)
            .build();

        CommandLine cmd = new CommandLine(new Maven2nix(
           Runtimes.INSTANCE.getRuntime().create(overrides)
        ));

        System.exit(cmd
            .setExecutionExceptionHandler(new PrintExceptionMessageHandler())
            .setExecutionStrategy(LoggingMixin::executionStrategy)
            .execute(args)
        );
    }
}
