#
# Cookbook Name:: php56
# Recipe:: fpm
#

default_vars = {
    :fpm => {
        :user => 'apache',
        :group => 'apache',
        :listen => '127.0.0.1:9000',
        :pm => 'dynamic',
        :pm_max_children => 50,
        :start_servers => 5,
        :min_spare_servers => 5,
        :max_spare_servers => 35,
    }
}

node.reverse_merge!(:php => default_vars)

package 'php-fpm' do
  options '--enablerepo=remi-php56'
end

%w(/etc/php-fpm.conf /etc/php-fpm.d/www.conf).each do |file|
  template file do
    notifies :restart, 'service[php-fpm]'
  end
end

service 'php-fpm' do
  action [:enable, :start]
end

template '/etc/php.ini' do
  notifies :restart, 'service[php-fpm]'
end
