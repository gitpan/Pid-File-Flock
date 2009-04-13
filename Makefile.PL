use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Pid::File::Flock',
    AUTHOR              => 'Oleg A. Mamontov <oleg@mamontov.net>',
    VERSION_FROM        => 'lib/Pid/File/Flock.pm',
    ABSTRACT_FROM       => 'lib/Pid/File/Flock.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Pid-File-Flock-*' },
);
