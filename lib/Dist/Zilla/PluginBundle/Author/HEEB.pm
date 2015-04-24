use strict;
use warnings;
package Dist::Zilla::PluginBundle::Author::HEEB;

# ABSTRACT: plugin bundle for distributions built by HEEB
use Moose;
with 'Dist::Zilla::Role::PluginBundle::Easy';

use namespace::autoclean;

sub configure {
    my ($self) = @_;

    $self->add_plugins(
        qw(
            GatherDir
            PruneCruft
        ),
        [
            PruneFiles => { filename => 'debian' },
        ],
        qw(
            ManifestSkip
            MetaYAML
            MetaJSON
            License
            Readme
            PodWeaver
            PkgVersion
            PodVersion
            PodCoverageTests
            PodSyntaxTests
            ExtraTests
            ExecDir
            ShareDir
            AutoPrereqs
            Test::Perl::Critic
            MakeMaker
            Manifest
            FakeRelease
        )
    );
}

__PACKAGE__->meta->make_immutable;
1;

__END__

=head1 DESCRIPTION

This bundle is meant to allow consistency and control over the
build process for distributions built by PAUSE author HEEB.
It started out as a copy of the
L<@Classic|Dist::Zilla::PluginBundle::Classic> plugin bundle.

The list of Dist::Zilla plugins it includes is best seen with
C<perldoc -m Dist::Zilla::PluginBundle::Author::HEEB>

=head1 SEE ALSO

L<@Basic|Dist::Zilla::PluginBundle::Basic>
L<@Classic|Dist::Zilla::PluginBundle::Classic>

=cut

=for Pod::Coverage
configure -- internal method
