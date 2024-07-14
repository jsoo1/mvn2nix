package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;

public abstract class Param implements Write {
    public static void indent(int ind, BufferedWriter w) throws IOException {
        for (int i = 0; i < ind; i++) {
            w.write(' ');
        }
    }
}
