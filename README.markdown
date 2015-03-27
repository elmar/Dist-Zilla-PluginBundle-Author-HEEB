Dist::Zilla::PluginBundle::Author::HEEB
=======================================

This Dist::Zilla plugin bundle is used by
[Elmar](https://metacpan.org/author/HEEB) to build the CPAN distributions that
he authors. It is used as a convenience and to ensure consistency among builds.
While it is subject to adjustments at any time using the plugin bundle ensures
that the current conventions chosen by the author are used.

The Dist::Zilla plugins used are best lookup up in the source of the plugin
bundle. They should reflect the current best practices.

E.g., this author likes to use `PruneFiles` so as to exclude the `debian`
directory from the CPAN distribution. The Debian package is directly built from
the upstream source using `dzil` via `dh-dist-zilla`.

Self-Referencing
----------------

This plugin bundle is self-referencing. It needs itself to build itself. This
is easily achieved by using the `-Ilib` options when calling `dzil`. The
`debian/rules` file automatically takes care of this.

The downstream CPAN distribution requires neither Dist::Zilla nor this plugin
bundle.
