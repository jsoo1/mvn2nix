package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;

public class AttrPattern extends Param implements Write {
    String[] attrNames;

    public AttrPattern(String[] as) {
        attrNames = as;
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        boolean written = false;

        w.write("{");

        for (String name: attrNames) {
            if (!written) {
                written = true;

                indent(ind, w); w.write(name);
            } else {
                indent(ind, w); w.write(", "); w.write(name);
            }
        }

        indent(ind, w); w.write("}");
    }
}
