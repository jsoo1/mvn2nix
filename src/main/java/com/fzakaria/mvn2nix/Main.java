package com.fzakaria.mvn2nix;

import com.fzakaria.mvn2nix.cmd.Maven2nix;
import eu.maveniverse.maven.mima.context.ContextOverrides;
import eu.maveniverse.maven.mima.context.Runtimes;
import picocli.CommandLine;

public class Main {
    public static void main(String[] args) {
        ContextOverrides overrides = ContextOverrides
            .create()
            .withUserSettings(true)
            .build();

        CommandLine cmd = new CommandLine(new Maven2nix(
           Runtimes.INSTANCE.getRuntime().create(overrides)
        ));

        System.exit(cmd.execute(args));
    }
}
