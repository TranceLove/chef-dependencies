name "dependencies"
description "Simple drop-in replacement for those who are tied to dependencies cookbook from AWS Opsworks"
maintainer "TranceLove (airwave209gt@gmail.com)"
license "Apache 2.0"
version "0.0.1"

depends "packages"

attribute "dependencies/debs",
    :display_name => "Debian packages to install",
    :description => "A list of Debian packages (.deb) to install",
    :required => false

attribute "dependencies/update_debs",
    :display_name => "Update sources",
    :description => "Update sources using apt-get update",
    :required => false

attribute "dependencies/upgrade_debs",
    :display_name => "Update packages",
    :description => "Update packages using apt-get upgrade",
    :required => false
