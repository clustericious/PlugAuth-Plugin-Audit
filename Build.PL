
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::HomeDir::Test" => 0,
    "Module::Build" => "0.3601",
    "Test::Mojo" => 0,
    "Test::More" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Audit log for authentication/authorization",
  "dist_author" => [
    "Graham Ollis <plicease\@cpan.org>"
  ],
  "dist_name" => "PlugAuth-Plugin-Audit",
  "dist_version" => "0.02",
  "license" => "perl",
  "module_name" => "PlugAuth::Plugin::Audit",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "DateTime" => 0,
    "File::HomeDir" => 0,
    "Path::Class::Dir" => 0,
    "Path::Class::File" => 0,
    "PlugAuth" => "0.09",
    "PlugAuth::Role::Plugin" => 0,
    "Role::Tiny::With" => 0,
    "YAML" => 0,
    "perl" => "v5.10.0"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
