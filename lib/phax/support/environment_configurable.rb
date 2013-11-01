require 'active_support/concern'
require 'active_support/configurable'

module Phax
  module Support

    # ActiveSupport::Configurable with env variable fallback.
    module EnvironmentConfigurable
      extend ActiveSupport::Concern
      include ActiveSupport::Configurable

      module ClassMethods
        def config_env_accessor(*names)
          options = names.extract_options!
          env_var_name = options.delete(:env)

          config_accessor(*names) do
            ENV[env_var_name]
          end
        end
      end
    end

  end
end
