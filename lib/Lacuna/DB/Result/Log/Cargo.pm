package Lacuna::DB::Result::Log::Cargo;

use Moose;
no warnings qw(uninitialized);
extends 'Lacuna::DB::Result::Log';
use Lacuna::Util;

__PACKAGE__->table('cargo_log');
__PACKAGE__->add_columns(
    object_type             => { data_type => 'varchar', size => 255, is_nullable => 0 },
    object_id               => { data_type => 'int', is_nullable => 0 },
    body_id                 => { data_type => 'int', is_nullable => 0 },
    message                 => { data_type => 'varchar', size=>255, is_nullable => 0 },
    data                    => { data_type => 'mediumtext', is_nullable => 1, 'serializer_class' => 'JSON' },
);


no Moose;
__PACKAGE__->meta->make_immutable(inline_constructor => 0);
