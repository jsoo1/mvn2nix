package org.apache.maven.lifecycle.providers.packaging;

import java.io.InputStreamReader;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.EndDocument;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;


import org.apache.maven.lifecycle.mapping.LifecycleMapping;
import org.apache.maven.lifecycle.providers.packaging.AbstractLifecycleMappingProvider;

public class PlexusLifecycleMappings {
    public final Map<String, AbstractLifecycleMappingProvider> mappings;
    public PlexusLifecycleMappings(Map<String, AbstractLifecycleMappingProvider> ms) {
        mappings = ms;
    }

    public static PlexusLifecycleMappings read(InputStreamReader r) {
        try {
            XMLEventReader xml = XMLInputFactory.newFactory().createXMLEventReader(r);

            XML.Parse<Map<String, GenericProvider>> parser = new ComponentSet();

            Map<String, AbstractLifecycleMappingProvider> ms = parser.parse(xml);

            return new PlexusLifecycleMappings(ms);
        } catch (XMLStreamException e) {
            throw new RuntimeException(e);
        }
    }

    public static class GenericProvider extends AbstractLifecycleMappingProvider {
        public GenericProvider(String[] xs) {
            super(xs);
        }
    }

    public static class ComponentSet implements XML.Parse<Map<String, GenericProvider>> {
        @Override
        public Map<String, GenericProvider> parse(XMLEventReader r) throws XML.Error {
            return XML.between(r, "component-set", new XML.Parse<>() {
                @Override
                public Map<String, GenericProvider> parse(XMLEventReader r1) throws XML.Error {
                    return XML.between(r1, "components", new XML.Parse<>() {
                        @Override
                        public Map<String, GenericProvider> parse(XMLEventReader r2) throws XML.Error {
                            Map<String, GenericProvider> res = new HashMap<>();

                            while (XML.peekNextTag(r2).isStartElement()) {
                                Map.Entry<String, GenericProvider> e = new Component().parse(r2);

                                res.put(e.getKey(), e.getValue());
                            }

                            return res;
                        }
                    });
                }
            });
        }
    }

    public static class Component implements XML.Parse<Map.Entry<String, GenericProvider>> {
        @Override
        public Map.Entry<String, GenericProvider> parse(XMLEventReader r) throws XML.Error {
            return XML.between(r, "component", new XML.Parse<>() {
                @Override
                public Map.Entry<String, GenericProvider> parse(XMLEventReader r1) throws XML.Error {
                    String role = XML.between(r1, "role", new XML.Content());
                    String hint = XML.between(r1, "role-hint", new XML.Content());
                    String imp = XML.between(r1, "implementation", new XML.Content());
                    GenericProvider mapping = new Configuration().parse(r1);

                    return new AbstractMap.SimpleImmutableEntry<String, GenericProvider>(hint, mapping);
                }
            });
        }
    }

    public static class Configuration implements XML.Parse<GenericProvider> {
        @Override
        public GenericProvider parse(XMLEventReader r) throws XML.Error {
            return XML.between(r, "configuration", new XML.Parse<>() {
                @Override
                public GenericProvider parse(XMLEventReader r1) throws XML.Error {
                    return XML.between(r1, "lifecycles", new XML.Parse<>() {
                        @Override
                        public GenericProvider parse(XMLEventReader r2) throws XML.Error {
                            return XML.between(r2, "lifecycle", new XML.Parse<>() {
                                    @Override
                                    public GenericProvider parse(XMLEventReader r3) throws XML.Error {
                                        String id = XML.between(r3, "id", new XML.Content());

                                        return new Phases().parse(r3);
                                    }
                            });
                        }
                    });
                }
            });
        }
    }

    public static class Phases implements XML.Parse<GenericProvider> {
        @Override
        public GenericProvider parse(XMLEventReader r) throws XML.Error {
            return XML.between(r, "phases", new XML.Parse<> () {
                @Override
                public GenericProvider parse(XMLEventReader r1) throws XML.Error {
                    List<String> res = new ArrayList<>();

                    while (XML.peekNextTag(r1).isStartElement()) {
                        String phase = XML.asStartElement(XML.peekNextTag(r1)).getName().getLocalPart();

                        res.add(phase);

                        res.add(XML.between(r1, phase, new XML.Content()).trim());
                    }

                    return new GenericProvider(res.stream().toArray(String[]::new));
                }
            });
        }
    }

    public static class XML {
        public static class Content implements Parse<String> {
            @Override
            public String parse(XMLEventReader r2) throws XML.Error {
                try {
                    return r2.nextEvent().asCharacters().getData();
                } catch (XMLStreamException e) {
                    throw new XML.NotCharacters(e);
                }
            }
        }

        public static <T> T between(XMLEventReader r, String lname, Parse<T> inner) throws XML.Error {
            StartElement start = asStartElement(nextTag(r));

            if (!start.getName().getLocalPart().equals(lname)) {
                throw new XML.UnexpectedStartElement(lname, start.getName().getLocalPart());
            }

            T res = inner.parse(r);

            EndElement end = asEndElement(nextTag(r));

            if (!end.getName().getLocalPart().equals(lname)) {
                throw new XML.UnexpectedEndElement(lname, end.getName().getLocalPart());
            }

            return res;
        }

        public static XMLEvent peekNextTag(XMLEventReader r) throws XML.Error {
            try {
                while (!(peek(r).isStartElement() || peek(r).isEndElement())) {
                    r.nextEvent();
                }
                return peek(r);
            } catch (XMLStreamException e) {
                throw new XML.NoNextTag(e);
            }
        }

        public static XMLEvent peek(XMLEventReader r) throws XML.Error {
            try {
                if (r.peek() == null) {
                    throw new XML.NoNextTag("no more elements");
                } else {
                    return r.peek();
                }
            } catch (XMLStreamException e) {
                throw new XML.NoNextTag(e);
            }
        }

        public static XMLEvent nextTag(XMLEventReader r) throws XML.Error {
            try {
                return r.nextTag();
            } catch (XMLStreamException e) {
                throw new XML.NoNextTag(e);
            }
        }

        public static StartElement asStartElement(XMLEvent el) throws XML.Error {
            try {
                return el.asStartElement();
            } catch (ClassCastException e) {
                throw new XML.UnexpectedElement(e, el.getLocation());
            }
        }

        public static EndElement asEndElement(XMLEvent el) throws XML.Error {
            try {
                return el.asEndElement();
            } catch (ClassCastException e) {
                throw new XML.UnexpectedElement(e, el.getLocation());
            }
        }
        public static interface Parse<T> {
            public abstract <T> T parse(XMLEventReader r) throws XML.Error;
        }

        public static abstract class Error extends XMLStreamException {
            public Error(String s) {
                super(s);
            }
            public Error(String s, Location l) {
                super(s, l);
            }
            public Error(XMLStreamException e) {
                super(e);
            }
        }
        public static class UnexpectedEndElement extends XML.Error {
            public UnexpectedEndElement(String wanted, String got) {
                super("unexpected end element, wanted <" + wanted + "> got: " + got);
            }
        }
        public static class UnexpectedStartElement extends XML.Error {
            public UnexpectedStartElement(String wanted, String got) {
                super("unexpected start element, wanted <" + wanted + "> got: " + got);
            }
        }
        public static class UnexpectedElement extends XML.Error {
            public UnexpectedElement(ClassCastException e, Location l) {
                super(e.getMessage(), l);
            }
        }
        public static class NotCharacters extends XML.Error {
            public NotCharacters(XMLStreamException e) {
                super(e);
            }
        }
        public static class NoNextTag extends XML.Error {
            public NoNextTag(XMLStreamException e) {
                super(e);
            }
            public NoNextTag(String msg) {
                super(msg);
            }
        }
        public static class MissingAttribute extends XML.Error {
            public MissingAttribute(String wanted) {
                super("missing attributed " + wanted);
            }
        }
    }
}
