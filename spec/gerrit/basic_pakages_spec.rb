require 'spec_helper'

describe package('git') do
  it { should be_installed }
end

describe package('mysql-server') do
  it { should be_installed }
end

describe package('puppet') do
  it { should be_installed }
end

describe package('puppet-common') do
  it { should be_installed }
end
