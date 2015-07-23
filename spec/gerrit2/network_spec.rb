require 'spec_helper'

describe port(8081) do
  it { should be_listening }
end
