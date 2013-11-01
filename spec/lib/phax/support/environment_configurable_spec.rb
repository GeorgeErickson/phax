require 'spec_helper'

describe Phax::Support::EnvironmentConfigurable do
  subject do
    ENV['TEST_ENV_1'] = 'test'
    Module.new do
      include Phax::Support::EnvironmentConfigurable
      config_env_accessor :test_config, env: 'TEST_ENV_1'
    end
  end

  it 'defaults to the env var' do
    expect(subject.test_config).to eq('test')
  end

  it 'can be overwritten' do
    subject.configure do |config|
      config.test_config = 'test2'
    end

    expect(subject.test_config).to eq('test2')
  end
end
