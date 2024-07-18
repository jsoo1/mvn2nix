package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;

public class Symbol extends Param implements Write {
    public final String symbol;

    public Symbol(String s) {
        symbol = s;
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        w.write(symbol);
    }
}
