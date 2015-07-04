module Refinery
  module Posters
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Posters

      engine_name :refinery_posters

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "posters"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.posters_admin_posters_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Posters)
      end
    end
  end
end
