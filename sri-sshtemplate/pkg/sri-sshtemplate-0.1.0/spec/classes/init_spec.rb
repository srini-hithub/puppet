require 'spec_helper'
describe 'sshtemplate' do

  context 'with defaults for all parameters' do
    it { should contain_class('sshtemplate') }
  end
end
