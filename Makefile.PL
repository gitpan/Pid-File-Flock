use strict;
use warnings;
use ExtUtils::MakeMaker;

die "Unsupported operating system" if $^O =~ /^cygwin$/i;

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
		'Carp'       => 0,
		'Cwd'        => 0,
		'Fcntl'      => 0,
		'File::Basename' => 0,
		'File::Spec::Functions' => 0,
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Pid-File-Flock-*' },
);
