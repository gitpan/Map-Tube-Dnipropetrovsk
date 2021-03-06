#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use Map::Tube::GraphViz;
use Map::Tube::GraphViz::Utils qw(node_color_without_label);
use Map::Tube::Dnipropetrovsk;

# Object.
my $obj = Map::Tube::Dnipropetrovsk->new;

# GraphViz object.
my $g = Map::Tube::GraphViz->new(
        'callback_node' => \&node_color_without_label,
        'driver' => 'neato',
        'tube' => $obj,
);

# Get graph to file.
$g->graph('Dnipropetrovsk.png');

# Print file.
system "ls -l Dnipropetrovsk.png";

# Output like:
# -rw-r--r-- 1 skim skim 16544 Jan  1 11:17 Dnipropetrovsk.png