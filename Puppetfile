# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.1.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.3.2"
github "homebrew",   "1.4.1"
github "inifile",    "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.9"
github "repository", "2.2.0"
github "ruby",       "6.3.4"
github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "alfred",         "1.1.2"
github "heroku",         "2.0.0"
github "chrome",         "1.1.1"
github "firefox",        "1.1.3"
github "sublime_text_2", "1.1.2"
github "dropbox",        "1.1.1"
github "mou",            "1.0.0"
github "iterm2",         "1.0.3"
github "osx",            "1.6.0"
github "zsh",            "1.0.0"
github "sysctl",         "1.0.0"
github "postgresapp",    "1.0.0"
github "sizeup",         "1.0.0"
github "redis",          "1.0.0"
