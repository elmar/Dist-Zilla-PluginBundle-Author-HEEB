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
            ManifestSkip
            MetaYAML
            License
            Readme
            PkgVersion
            PodVersion
            PodCoverageTests
            PodSyntaxTests
            ExtraTests
            ExecDir
            ShareDir

            MakeMaker
            Manifest

            ConfirmRelease
            UploadToCPAN
        )
    );
}

__PACKAGE__->meta->make_immutable;
1;

#pod =head1 DESCRIPTION
#pod
#pod This bundle is meant to allow consistency and control over the
#pod build process for distributions built by PAUSE author HEEB.
#pod It started out as a copy of the
#pod L<@Classic|Dist::Zilla::PluginBundle::Classic> plugin bundle.
#pod
#pod The list of Dist::Zilla plugins it includes is best seen with
#pod C<perldoc -m Dist::Zilla::PluginBundle::Author::HEEB>
#pod
#pod =head1 SEE ALSO
#pod
#pod L<@Basic|Dist::Zilla::PluginBundle::Basic>
#pod L<@Classic|Dist::Zilla::PluginBundle::Classic>
#pod
#pod =cut
