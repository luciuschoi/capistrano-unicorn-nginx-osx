module Capistrano
  module UnicornNginxOsx
    module Generators
      class ConfigGenerator < Rails::Generators::Base
        desc "Create local nginx and unicorn configuration files for customization"
        source_root File.expand_path('../templates', __FILE__)
        argument :templates_path, type: :string,
          default: "config/deploy/templates",
          banner: "path to templates"

        def copy_template
          copy_file "nginx_conf.erb", "#{templates_path}/nginx_conf.erb"
          copy_file "unicorn.rb.erb", "#{templates_path}/unicorn.rb.erb"
          copy_file "unicorn.plist.erb", "#{templates_path}/unicorn.plist.erb"
        end
      end
    end
  end
end
