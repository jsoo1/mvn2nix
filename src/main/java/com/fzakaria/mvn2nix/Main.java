package com.fzakaria.mvn2nix;

import com.google.inject.Guice;
import com.google.inject.Injector;
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
        Injector injector = Guice.createInjector(
            new WireModule(new SpaceModule(new URLClassSpace(Main.class.getClassLoader())))
        );

        CommandLine cmd = new CommandLine(injector.getInstance(Maven2nix.class));

        System.exit(cmd
            .setExecutionExceptionHandler(new PrintExceptionMessageHandler())
            .setExecutionStrategy(LoggingMixin::executionStrategy)
            .execute(args)
        );
    }
}
