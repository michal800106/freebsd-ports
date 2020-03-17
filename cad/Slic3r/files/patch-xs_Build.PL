--- xs/Build.PL.orig	2020-02-26 19:12:39.166869000 +0000
+++ xs/Build.PL	2020-02-26 19:12:56.796142000 +0000
@@ -27,9 +27,6 @@
 	push @cflags, qw(-U__STRICT_ANSI__);
 }
 
-# std=c++11 Enforce usage of C++11 (required now). Minimum compiler supported: gcc 4.9, clang 3.3, MSVC 14.0
-push @cflags, qw(-std=c++11);
-
 my @ldflags = ();
 
 if ($linux && (defined $ENV{SLIC3R_STATIC} && $ENV{SLIC3R_STATIC})) {
