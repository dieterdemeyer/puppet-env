#!/usr/bin/env rspec

require 'spec_helper'

describe 'env::system' do
  
  it { should contain_class 'env::system' }

  it 'should create /etc/profile.d' do
    should contain_file('/etc/profile.d').with({
      'ensure' => 'directory',
    })
  end

  it 'should create /etc/profile.d/bash_hist.sh' do
    should contain_file('/etc/profile.d/bash_hist.sh').with({
      'ensure' => 'present',
    })
  end

end
