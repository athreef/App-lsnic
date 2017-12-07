package App::lsnic;
use strict;
# ABSTRACT: Display table of network controllers
# VERSION
1;

=pod

=encoding utf8

=head1 NAME

lsnic - Display table of network controllers

=head1 SYNOPSIS

    # lsnic
    Bus              Interface Serial            Driver   Description
    pci@0000:26:00.0 enp38s0   10:7b:44:90:00:00 igb      I211 Gigabit Network Connection [8086:1539]
    pci@0000:29:00.0           68-05-ca-61-00-00 vfio-pci I210 Gigabit Network Connection [8086:1533]
                     br0       42:6c:1c:88:00:00 bridge
                     br1       10:7b:44:90:00:00 bridge

=head1 INSTALLATION

    # cpan App::lsionic

=head1 DESCRIPTION

L<This script|http://github.com/a3f/.dotfiles/blob/master/bin/lsnic> packaged as CPAN module.
This script reformats C<lshw -c network -numeric> output in the tabular format above.
If the driver doesn't report a MAC address, it's extracted from the serial number read by C<lspci(1)>
This script requires super user priviliges to work.

=head1 GIT REPOSITORY

L<http://github.com/athreef/App-lsnic>

=head1 SEE ALSO

L<http://github.com/a3f/.dotfiles>

=head1 AUTHOR

Ahmad Fatoum C<< <athreef@cpan.org> >>, L<http://a3f.at>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2017 Ahmad Fatoum

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
