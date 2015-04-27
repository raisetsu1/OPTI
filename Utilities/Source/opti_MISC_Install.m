%% Miscellaneous Solver/Utility Install for OPTI Toolbox

%   Copyright (C) 2015 Jonathan Currie (I2C2)

% This file will help you compile a few miscellaneous solvers and
% utilities for use with OPTI.

% My build platform:
% - Windows 7 x64
% - Visual Studio 2013

%% NETLIB BLAS
% Download from http://www.netlib.org/blas/

% Build VS Ifort Solution to build .lib
path = 'C:\Solvers\BLAS';
opti_VSBuild('blas',path)


%% NETLIB LAPACK
% Download from http://www.netlib.org/blas/

% Build VS Ifort Solution to build .lib
path = 'C:\Solvers\lapack-3.5.0';
opti_VSBuild('lapack',path)


%% MA27 (HSL License - Do not redistribute)
% MA27 is an older sparse linear solver. Download from HSL:
% http://www.hsl.rl.ac.uk/download/MA27/1.0.0/a/

% Build VS Ifort Solution to build .lib [32bit int version]
path = 'C:\Solvers\ma27';
opti_VSBuild('ma27',path)


%% MA57 (HSL License - Do not redistribute)
% MA57 is a new sparse linear solver which replaces MA27. Download from HSL:
% http://www.hsl.rl.ac.uk/download/MA57/3.9.0/

% Build VS Ifort Solution to build .lib (note MeTiS from the MUMPS install is always assumed linked later) [32bit int version]
path = 'C:\Solvers\ma57-3.7.0';
opti_VSBuild('ma57',path)


%% MATLAB's MA57 Wrapper
% Source is included with OPTI, just call opti_VSBuild as below

opti_VSBuild('mwma57')