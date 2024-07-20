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

        for (int i = 0; i < attrNames.length; i++) {
            if (!written) {
                written = true;

                indent(ind, w); w.write("  "); w.write(attrNames[i]);
            } else {
                indent(ind, w); w.write(", "); w.write(attrNames[i]);
            }
        }

        if (attrNames.length == 0) {
            w.write(" ");
        } else {
            indent(ind, w);
        }

        w.write("}");
    }
}
