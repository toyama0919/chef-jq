#
# Cookbook Name:: jq
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{bison flex}.each do |pkg|
  package pkg do
    action :install
  end
end

git "/tmp/jq" do
  repository "git://github.com/stedolan/jq.git"
  reference "master"
  action :checkout
  user "root"
  group "root"
  notifies :run, 'execute[jq_make_install]', :immediately
end

# install
execute "jq_make_install" do
  cwd "/tmp/jq"
  command "autoreconf;./configure; make; make install"
  action :run
end
