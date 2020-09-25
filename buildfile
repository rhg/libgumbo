./: lib{gumbo} doc{README.md} manifest

lib{gumbo}: {h c}{gumbo-parser/src/**}
{
    c.export.poptions = "-I$out_root/"
    c.coptions += -Wall
}

h{*}: install = include/libgumbo

# Don't install tests.
#
# tests/: install = false
