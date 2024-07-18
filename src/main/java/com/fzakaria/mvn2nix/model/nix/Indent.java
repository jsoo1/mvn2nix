package com.fzakaria.mvn2nix.model.nix;

public abstract class Indent implements Write {
    public static void indent(int ind, java.io.BufferedWriter w) throws java.io.IOException {
        w.newLine();

        for (int i = 0; i < ind; i++) {
            w.write(' ');
        }
    }
}
