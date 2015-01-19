### gentoobb/mysql:20150108
Built: Sun Jan 11 23:23:04 CET 2015

Image Size: 168.1 MB
#### Installed
Package | USE Flags
--------|----------
app-admin/perl-cleaner-2.19 | ``
app-arch/bzip2-1.0.6-r6 | `-static -static-libs`
app-portage/portage-utils-0.53 | `nls -static`
dev-db/mysql-5.5.40 | `bindist community perl ssl -cluster -debug -embedded -extraengine -jemalloc -latin1 -max-idx-128 -minimal -profiling (-selinux) -static -static-libs -systemtap -tcmalloc {-test}`
dev-db/mysql-init-scripts-2.0-r1 | ``
dev-lang/perl-5.18.2-r2 | `berkdb -debug -doc -gdbm -ithreads`
dev-libs/libaio-0.3.110 | `-static-libs {-test}`
dev-perl/DBD-mysql-4.20.0-r1 | `-embedded`
dev-perl/DBI-1.628.0 | `{-test}`
dev-perl/Net-Daemon-0.480.0-r1 | ``
dev-perl/PlRPC-0.202.0-r2 | ``
perl-core/Data-Dumper-2.154.0 | ``
perl-core/File-Temp-0.230.0 | ``
sys-apps/texinfo-4.13-r2 | `nls -static`
sys-libs/db-4.8.30-r2 | `cxx -doc -examples -java -tcl {-test}`
sys-process/procps-3.3.9-r2 | `nls unicode -ncurses (-selinux) -static-libs -systemd {-test}`
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobb/bash** |
app-admin/eselect-1.4.3 | `-doc -emacs -vim-syntax`
app-shells/bash-4.2_p53 | `net nls (readline) -afs -bashlogger -examples -mem-scramble -plugins -vanilla`
net-misc/curl-7.39.0 | `ssl threads -adns -idn -ipv6 -kerberos -ldap -metalink -rtmp -ssh -static-libs {-test}`
sys-apps/file-5.21 | `zlib -python -static-libs`
sys-apps/sed-4.2.1-r1 | `acl nls (-selinux) -static`
sys-libs/ncurses-5.9-r3 | `cxx unicode -ada -debug -doc -gpm -minimal -profile -static-libs -tinfo -trace`
sys-libs/readline-6.2_p5-r1 | `-static-libs`
**FROM gentoobb/openssl** |
app-misc/ca-certificates-20130906-r1 | ``
dev-libs/openssl-1.0.1k | `bindist (sse2) tls-heartbeat zlib -gmp -kerberos -rfc3779 -static-libs {-test} -vanilla`
sys-apps/acl-2.2.52-r1 | `nls -static-libs`
sys-apps/attr-2.4.47-r1 | `nls -static-libs`
sys-apps/coreutils-8.21 | `acl nls (xattr) -caps -gmp (-selinux) -static -vanilla`
sys-apps/debianutils-4.4 | `-static`
sys-libs/zlib-1.2.8-r1 | `-minizip -static-libs`
**FROM gentoobb/s6** |
dev-lang/execline-1.3.1.1 | `-static-libs`
dev-libs/skalibs-1.6.0.0 | `-doc -static-libs`
sys-apps/s6-1.1.3.2 | ``
*manual install*: entr-2.9 | http://entrproject.org/
**FROM gentoobb/glibc** |
sys-libs/glibc-2.19-r1 | `hardened -debug -gd (-multilib) -nscd -profile (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2014i-r1 | `nls -right`
#### Purged
- [x] Headers
- [x] Static Libs