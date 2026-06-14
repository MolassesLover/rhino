
# This file was created by mkconfig.rb when ruby was built.  Any
# changes made to this file will be lost the next time ruby is built.

module Config
  RUBY_VERSION == "1.8.1" or
    raise "ruby lib version (1.8.1) doesn't match executable version (#{RUBY_VERSION})"

  TOPDIR = File.dirname(__FILE__).sub!(%r'/lib/ruby/1\.8/x86_64\-linux\Z', '')
  DESTDIR = '' unless defined? DESTDIR
  CONFIG = {}
  CONFIG["DESTDIR"] = DESTDIR
  CONFIG["srcdir"] = "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/ruby181"
  CONFIG["EXEEXT"] = ""
  CONFIG["ruby_install_name"] = "ruby"
  CONFIG["prefix"] = (TOPDIR || DESTDIR + "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/ruby181-build")
  CONFIG["LTLIBOBJS"] = ""
  CONFIG["MANTYPE"] = "doc"
  CONFIG["NROFF"] = "/usr/bin/nroff"
  CONFIG["configure_args"] = " 'CFLAGS=-Wno-incompatible-pointer-types         -Wno-old-style-definition         -Wno-deprecated-non-prototype         -Wno-implicit-const-int-float-conversion         -Wno-int-conversion         -Wno-implicit-int         -Wno-shift-negative-value         -Wno-parentheses         -Wno-empty-body         -Wno-sizeof-array-div         -Wno-pointer-sign         -Wno-static-local-in-inline         -Wno-format -std=gnu89' 'CXXFLAGS=-Wno-incompatible-pointer-types         -Wno-old-style-definition         -Wno-deprecated-non-prototype         -Wno-implicit-const-int-float-conversion         -Wno-int-conversion         -Wno-implicit-int         -Wno-shift-negative-value         -Wno-parentheses         -Wno-empty-body         -Wno-sizeof-array-div         -Wno-pointer-sign         -Wno-static-local-in-inline         -Wno-format -std=gnu++98' 'CC=gcc' 'CXX=g++' '--prefix=/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/ruby181-build'"
  CONFIG["sitedir"] = "$(prefix)/lib/ruby/site_ruby"
  CONFIG["sitearch"] = "x86_64-linux"
  CONFIG["arch"] = "x86_64-linux"
  CONFIG["MAKEFILES"] = "Makefile"
  CONFIG["EXPORT_PREFIX"] = ""
  CONFIG["COMMON_HEADERS"] = ""
  CONFIG["COMMON_MACROS"] = ""
  CONFIG["COMMON_LIBS"] = ""
  CONFIG["MAINLIBS"] = ""
  CONFIG["ENABLE_SHARED"] = "no"
  CONFIG["DLDLIBS"] = " -lc"
  CONFIG["SOLIBS"] = ""
  CONFIG["LIBRUBYARG_SHARED"] = ""
  CONFIG["LIBRUBYARG_STATIC"] = "-l$(RUBY_SO_NAME)-static"
  CONFIG["LIBRUBYARG"] = "$(LIBRUBYARG_STATIC)"
  CONFIG["LIBRUBY"] = "$(LIBRUBY_A)"
  CONFIG["LIBRUBY_ALIASES"] = "lib$(RUBY_SO_NAME).so"
  CONFIG["LIBRUBY_SO"] = "lib$(RUBY_SO_NAME).so.$(MAJOR).$(MINOR).$(TEENY)"
  CONFIG["LIBRUBY_A"] = "lib$(RUBY_SO_NAME)-static.a"
  CONFIG["RUBY_SO_NAME"] = "$(RUBY_INSTALL_NAME)"
  CONFIG["RUBYW_INSTALL_NAME"] = ""
  CONFIG["rubyw_install_name"] = ""
  CONFIG["RUBY_INSTALL_NAME"] = "ruby"
  CONFIG["LIBRUBY_DLDFLAGS"] = ""
  CONFIG["LIBRUBY_LDSHARED"] = "gcc -shared"
  CONFIG["XLDFLAGS"] = " -L."
  CONFIG["XCFLAGS"] = ""
  CONFIG["ARCHFILE"] = ""
  CONFIG["PREP"] = ""
  CONFIG["MINIRUBY"] = "./miniruby$(EXEEXT)"
  CONFIG["setup"] = "Setup.tapir"
  CONFIG["EXTSTATIC"] = ""
  CONFIG["STRIP"] = "strip -S -x"
  CONFIG["RPATHFLAG"] = ""
  CONFIG["LIBPATHFLAG"] = " -L%s"
  CONFIG["LINK_SO"] = ""
  CONFIG["LIBEXT"] = "a"
  CONFIG["DLEXT2"] = ""
  CONFIG["DLEXT"] = "so"
  CONFIG["LDSHARED"] = "gcc -shared"
  CONFIG["CCDLFLAGS"] = " -fPIC"
  CONFIG["STATIC"] = ""
  CONFIG["ARCH_FLAG"] = ""
  CONFIG["DLDFLAGS"] = ""
  CONFIG["ALLOCA"] = ""
  CONFIG["LIBOBJS"] = ""
  CONFIG["EGREP"] = "/nix/store/gn94gpcp5q08x4v6g8mvw8v4r65rcjzk-gnugrep-3.12/bin/grep -E"
  CONFIG["GREP"] = "/nix/store/gn94gpcp5q08x4v6g8mvw8v4r65rcjzk-gnugrep-3.12/bin/grep"
  CONFIG["SET_MAKE"] = ""
  CONFIG["LN_S"] = "ln -s"
  CONFIG["DLLWRAP"] = ""
  CONFIG["WINDRES"] = ""
  CONFIG["NM"] = ""
  CONFIG["AR"] = "ar"
  CONFIG["RANLIB"] = "ranlib"
  CONFIG["YFLAGS"] = ""
  CONFIG["YACC"] = "byacc"
  CONFIG["OUTFLAG"] = "-o "
  CONFIG["CPPOUTFILE"] = "-o conftest.i"
  CONFIG["CPP"] = "gcc -E"
  CONFIG["GNU_LD"] = "yes"
  CONFIG["OBJEXT"] = "o"
  CONFIG["CPPFLAGS"] = ""
  CONFIG["LDFLAGS"] = " -rdynamic"
  CONFIG["CFLAGS"] = "-Wno-incompatible-pointer-types         -Wno-old-style-definition         -Wno-deprecated-non-prototype         -Wno-implicit-const-int-float-conversion         -Wno-int-conversion         -Wno-implicit-int         -Wno-shift-negative-value         -Wno-parentheses         -Wno-empty-body         -Wno-sizeof-array-div         -Wno-pointer-sign         -Wno-static-local-in-inline         -Wno-format -std=gnu89"
  CONFIG["CC"] = "gcc"
  CONFIG["target_os"] = "linux"
  CONFIG["target_vendor"] = "unknown"
  CONFIG["target_cpu"] = "x86_64"
  CONFIG["target"] = "x86_64-unknown-linux"
  CONFIG["host_os"] = "linux"
  CONFIG["host_vendor"] = "unknown"
  CONFIG["host_cpu"] = "x86_64"
  CONFIG["host"] = "x86_64-unknown-linux"
  CONFIG["build_os"] = "linux"
  CONFIG["build_vendor"] = "unknown"
  CONFIG["build_cpu"] = "x86_64"
  CONFIG["build"] = "x86_64-unknown-linux"
  CONFIG["TEENY"] = "1"
  CONFIG["MINOR"] = "8"
  CONFIG["MAJOR"] = "1"
  CONFIG["target_alias"] = ""
  CONFIG["host_alias"] = ""
  CONFIG["build_alias"] = ""
  CONFIG["LIBS"] = "-ldl -lcrypt -lm "
  CONFIG["ECHO_T"] = ""
  CONFIG["ECHO_N"] = "-n"
  CONFIG["ECHO_C"] = ""
  CONFIG["mandir"] = "$(datarootdir)/man"
  CONFIG["localedir"] = "$(datarootdir)/locale"
  CONFIG["libdir"] = "$(exec_prefix)/lib"
  CONFIG["psdir"] = "$(docdir)"
  CONFIG["pdfdir"] = "$(docdir)"
  CONFIG["dvidir"] = "$(docdir)"
  CONFIG["htmldir"] = "$(docdir)"
  CONFIG["infodir"] = "$(datarootdir)/info"
  CONFIG["docdir"] = "$(datarootdir)/doc/$(PACKAGE)"
  CONFIG["oldincludedir"] = "/usr/include"
  CONFIG["includedir"] = "$(prefix)/include"
  CONFIG["runstatedir"] = "$(localstatedir)/run"
  CONFIG["localstatedir"] = "$(prefix)/var"
  CONFIG["sharedstatedir"] = "$(prefix)/com"
  CONFIG["sysconfdir"] = "$(prefix)/etc"
  CONFIG["datadir"] = "$(datarootdir)"
  CONFIG["datarootdir"] = "$(prefix)/share"
  CONFIG["libexecdir"] = "$(exec_prefix)/libexec"
  CONFIG["sbindir"] = "$(exec_prefix)/sbin"
  CONFIG["bindir"] = "$(exec_prefix)/bin"
  CONFIG["exec_prefix"] = "$(prefix)"
  CONFIG["PACKAGE_URL"] = ""
  CONFIG["PACKAGE_BUGREPORT"] = ""
  CONFIG["PACKAGE_STRING"] = ""
  CONFIG["PACKAGE_VERSION"] = ""
  CONFIG["PACKAGE_TARNAME"] = ""
  CONFIG["PACKAGE_NAME"] = ""
  CONFIG["PATH_SEPARATOR"] = ":"
  CONFIG["SHELL"] = "/bin/sh"
  CONFIG["ruby_version"] = "$(MAJOR).$(MINOR)"
  CONFIG["rubylibdir"] = "$(libdir)/ruby/$(ruby_version)"
  CONFIG["archdir"] = "$(rubylibdir)/$(arch)"
  CONFIG["sitelibdir"] = "$(sitedir)/$(ruby_version)"
  CONFIG["sitearchdir"] = "$(sitelibdir)/$(sitearch)"
  CONFIG["compile_dir"] = "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/ruby181"
  MAKEFILE_CONFIG = {}
  CONFIG.each{|k,v| MAKEFILE_CONFIG[k] = v.dup}
  def Config::expand(val, config = CONFIG)
    val.gsub!(/\$\$|\$\(([^()]+)\)|\$\{([^{}]+)\}/) do |var|
      if !(v = $1 || $2)
	'$'
      elsif key = config[v]
	config[v] = false
        Config::expand(key, config)
	config[v] = key
      else
	var
      end
    end
    val
  end
  CONFIG.each_value do |val|
    Config::expand(val)
  end
end
CROSS_COMPILING = nil unless defined? CROSS_COMPILING
