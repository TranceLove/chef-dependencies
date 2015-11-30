#
# Cookbook Name:: dependencies
# Recipe:: default

include_recipe 'packages'

case node[:platform]
when 'centos','redhat','fedora','amazon'
  # this should actually iterate over node[:dependencies][:rpms]
  node[:dependencies][:debs].each do |rpm, version|
    Chef::Log.info("preparing installation of dependency: rpm #{rpm.inspect}")
    package rpm do
      action :upgrade
      version(version)
    end
  end
when 'debian','ubuntu'
  node[:dependencies][:debs].each do |deb, version|
    Chef::Log.info("preparing installation of dependency: dpkg #{deb.inspect}")
    package deb do
      action :upgrade
      version(version)
    end
  end
end
