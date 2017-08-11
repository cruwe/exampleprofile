require 'spec_helper'
describe 'exampleprofile' do
  context 'with default values for all parameters' do
    it { should contain_class('exampleprofile') }
  end
end
