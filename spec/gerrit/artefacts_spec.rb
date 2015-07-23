require 'spec_helper'

describe file('/home/gerrit2') do
  it { should exist }
end

describe file('/vagrant/install_modules.sh') do
  it { should be_executable }
end

describe 'puppet specific modules' do
  describe file('/etc/puppet/modules') do
    it { should exist }
    it { should be_directory }
  end

  describe command('cd /etc/puppet/modules/vcsrepo && git status') do
     its(:stdout) { should match /0.0.8/ }
  end

  describe command('cd /etc/puppet/modules/wildfly && git status') do
     its(:stdout) { should match /v0.2.4/ }
  end

  describe command('cd /etc/puppet/modules/wget && git status') do
     its(:stdout) { should match /v1.6.0/ }
  end

  describe command('cd /etc/puppet/modules/git && git status') do
     its(:stdout) { should match /0.1.0/ }
  end

  describe command('cd /etc/puppet/modules/staging && git status') do
     its(:stdout) { should match /1.0.0/ }
  end

  describe command('cd /etc/puppet/modules/alternatives && git status') do
     its(:stdout) { should match /0.3.0/ }
  end

  describe command('cd /etc/puppet/modules/puppetboard && git status') do
     its(:stdout) { should match /2.4.0/ }
  end

  describe command('cd /etc/puppet/modules/apache && git status') do
     its(:stdout) { should match /0.0.4/ }
  end

  describe command('cd /etc/puppet/modules/apt && git status') do
     its(:stdout) { should match /1.4.2/ }
  end

  describe command('cd /etc/puppet/modules/concat && git status') do
     its(:stdout) { should match /1.1.0/ }
  end

  describe command('cd /etc/puppet/modules/firewall && git status') do
     its(:stdout) { should match /1.1.3/ }
  end

  describe command('cd /etc/puppet/modules/haproxy && git status') do
     its(:stdout) { should match /0.4.1/ }
  end

  describe command('cd /etc/puppet/modules/inifile && git status') do
     its(:stdout) { should match /1.1.3/ }
  end

  describe command('cd /etc/puppet/modules/mysql && git status') do
     its(:stdout) { should match /0.6.1/ }
  end

  describe command('cd /etc/puppet/modules/ntp && git status') do
     its(:stdout) { should match /3.1.2/ }
  end

  describe command('cd /etc/puppet/modules/postgresql && git status') do
     its(:stdout) { should match /3.4.2/ }
  end

  describe command('cd /etc/puppet/modules/puppetdb && git status') do
     its(:stdout) { should match /3.0.1/ }
  end

  describe command('cd /etc/puppet/modules/rabbitmq && git status') do
     its(:stdout) { should match /5.0.0/ }
  end

  describe command('cd /etc/puppet/modules/stdlib && git status') do
     its(:stdout) { should match /4.3.2/ }
  end

  describe command('cd /etc/puppet/modules/pear && git status') do
     its(:stdout) { should match /1.0.3/ }
  end

  describe command('cd /etc/puppet/modules/memcached && git status') do
     its(:stdout) { should match /a0d4bdc/ }
  end

  describe command('cd /etc/puppet/modules/selinux && git status') do
     its(:stdout) { should match /v0.5.1/ }
  end

  describe command('cd /etc/puppet/modules/python && git status') do
     its(:stdout) { should match /1.9.4/ }
  end

  describe command('cd /etc/puppet/modules/solr && git status') do
     its(:stdout) { should match /0.0.7/ }
  end
end
