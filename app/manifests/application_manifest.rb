require "#{File.dirname(__FILE__)}/../../vendor/plugins/moonshine/lib/moonshine.rb"
class ApplicationManifest < Moonshine::Manifest::Rails

  # Rails, Apache, Passenger, the database from database.yml, Postfix, Cron, logrotate and NTP.
  recipe :default_stack
  
  recipe :memcached
  
  def application_packages
    package 'zip', :ensure => :installed
  
    cron 'dummy_task', :command => 'ls -la', :user => configuration[:user], :minute => 0, :hour => 0
  
    farm_config = <<-CONFIG
      MOOCOWS = 3
      HORSIES = 10
    CONFIG
    file '/etc/farm.conf', :ensure => :present, :content => farm_config
  end
  recipe :application_packages
  
end
