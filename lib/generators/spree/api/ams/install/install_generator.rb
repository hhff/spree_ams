module Spree
  module Api
    module Ams
      module Generators
        class InstallGenerator < Rails::Generators::Base
          source_root File.expand_path("../", __FILE__)
          desc "Installs the Apitome initializer and markdown file into your application."

          def copy_initializers
            copy_file "templates/initializer.rb", "config/initializers/spree_ams.rb"
          end
        end
      end
    end
  end
end
