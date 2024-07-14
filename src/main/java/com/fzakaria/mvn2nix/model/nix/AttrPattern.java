package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;

public class AttrPattern extends Param implements Write {
    String[] attrNames;

    public AttrPattern(String[] attrNames) {
        attrNames = attrNames;
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        boolean written = false;
        for (String name: attrNames) {
            if (!written) {
                w.write("\n"); indent(ind, w); w.write("{ "); w.write(name);
            } else {
                w.write("\n"); indent(ind, w); w.write(", "); w.write(name);
            }
        }
        w.write("\n"); indent(ind, w); w.write("}");
    }
}
