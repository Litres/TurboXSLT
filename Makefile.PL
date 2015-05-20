use 5.008;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME              => "TurboXSLT",
  ABSTRACT          => "Interface to turboxsl library",
  VERSION_FROM      => "TurboXSLT.pm",
  AUTHOR            => "Egor Voznessenski",
  LICENSE           => "perl_5",
  INC               => "-I/opt/turboxsl/include/",
  LIBS              => ["-L/opt/turboxsl/lib -lturboxsl"]
);
