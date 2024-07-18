package com.fzakaria.mvn2nix.model.nix;

import java.io.BufferedWriter;
import java.io.IOException;

import java.util.List;
import java.util.Map;
import java.util.LinkedHashMap;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Attrs extends Expr implements Write {
    public final LinkedHashMap<String, Expr> attrs;

    public Attrs(Stream<Map.Entry<String, Expr>> s) {
        attrs = s.collect(Collectors.toMap(
            Map.Entry::getKey, Map.Entry::getValue, Expr::snd, LinkedHashMap::new
        ));
    }

    public Attrs(List<Map.Entry<String, Expr>> as) {
        attrs = as.stream().collect(Collectors.toMap(
            Map.Entry::getKey, Map.Entry::getValue, Expr::snd, LinkedHashMap::new
        ));
    }

    @Override
    public void write(int ind, BufferedWriter w) throws IOException {
        boolean written = false;

        for (Map.Entry<String, Expr> e: attrs.entrySet()) {
            if (!written) {
                written = true;

                w.write("{\n"); indent(ind + INDENT_WIDTH, w);
            } else {
                w.write("\n"); indent(ind + INDENT_WIDTH, w);
            }
            writeNameValue(ind, w, e.getKey(), e.getValue());
        }
        w.write("\n"); indent(ind, w); w.write("}");
    }

    public static void writeNameValue(int ind, BufferedWriter w, String name, Expr value) throws IOException {
        w.write(name); w.write(" = "); value.write(ind + INDENT_WIDTH, w); w.write(";");
    }
}
