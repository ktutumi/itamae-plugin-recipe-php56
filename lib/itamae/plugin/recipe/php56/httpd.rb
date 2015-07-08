#
# Cookbook Name:: php56
# Recipe:: httpd
#

package 'php' do
  options '--enablerepo=remi-php56'
  notifies :restart, 'service[httpd]'
end

template '/etc/php.ini' do
  notifies :restart, 'service[httpd]'
end

