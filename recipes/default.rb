#
# Cookbook Name:: jq
# Recipe:: default
#

%w{bison flex libtool}.each do |pkg|
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
  command "autoreconf -i;./configure; make; make install"
  action :run
end
