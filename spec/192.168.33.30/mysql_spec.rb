require 'spec_helper'

describe package('MySQL-server-5.6.25-1.el6.x86_64') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_enabled }
  it { should be_running }
end

describe port(3306) do
  it { should be_listening }
end
