package Lacuna::DB::Result::Building::Permanent::TempleOfTheDrajilites;

use Moose;
no warnings qw(uninitialized);
extends 'Lacuna::DB::Result::Building::Permanent';

use constant controller_class => 'Lacuna::RPC::Building::TempleOfTheDrajilites';

sub can_build {
    my ($self, $body) = @_;
    if ($body->get_plan(__PACKAGE__, 1)) {
        return 1;  
    }
    confess [1013,"You can't build the Temple of the Drajilites. It was left behind by the Great Race."];
}

sub can_upgrade {
    confess [1013, "You can't upgrade the Temple of the Drajilites. It was left behind by the Great Race."];
}

#after finish_upgrade => sub {
#    my $self = shift;
#    if ($self->level == 1) {
#        $self->body->add_news(50, sprintf('The followers of the Drajilite religion rejoiced when their ancient temple was uncovered on %s.', $self->body->name));
#    }
#};

use constant image => 'templedrajilites';

sub image_level {
    my ($self) = @_;
    return $self->image.'1';
}

use constant name => 'Temple of the Drajilites';

use constant time_to_build => 0;
use constant max_instances_per_planet => 1;


no Moose;
__PACKAGE__->meta->make_immutable(inline_constructor => 0);
