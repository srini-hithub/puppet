require 'spec_helper'
describe 'sshuser' do

  context 'with defaults for all parameters' do
    it { should contain_class('sshuser') }
  end
end
