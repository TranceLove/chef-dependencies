default[:dependencies][:gems] = {}
default[:dependencies][:debs] = {}
default[:dependencies][:npms] = {}
# this is not implemented on the application side.
default[:dependencies][:rpms] = {}

default[:dependencies][:update_debs] = false
default[:dependencies][:upgrade_debs] = false
# this is not implemented on the application side.
default[:dependencies][:upgrade_rpms] = false

include_attribute "dependencies::customize"
