require 'spec_helper'

describe service('gerrit') do
  it { should be_running }
end
