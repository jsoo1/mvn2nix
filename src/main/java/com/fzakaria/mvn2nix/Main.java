package com.fzakaria.mvn2nix;

import com.fzakaria.mvn2nix.cmd.Maven2nix;
import picocli.CommandLine;

public class Main {
    public static void main(String[] args) {
        CommandLine cmd = new CommandLine(new Maven2nix());

        System.exit(cmd.execute(args));
    }
}
