require 'spec_helper'

describe package('jenkins') do
  it { should be_installed }
end

describe service('jenkins') do
  it { should be_enabled }
  it { should be_running }
end

describe port(8080) do
  it { should be_listening }
end

describe file('/etc/defaul/jenkins') do
  it { should be_file }
  # its(:content) { should match /ServerName www.example.jp/ }
end
