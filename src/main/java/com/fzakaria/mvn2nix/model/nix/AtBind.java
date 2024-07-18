package com.fzakaria.mvn2nix.model.nix;

public class AtBind extends Param implements Write {
    public final String name;
    public final AttrPattern pattern;

    public AtBind(String n, AttrPattern p) {
        name = n;
        pattern = p;
    }

    public void write(int ind, java.io.BufferedWriter w) throws java.io.IOException {
        w.write(name); w.write("@"); pattern.write(ind, w);
    }
}
