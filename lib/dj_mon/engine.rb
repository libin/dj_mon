module DjMon
  class Engine < Rails::Engine

    isolate_namespace DjMon

    config.autoload_paths += %W(#{config.root}/lib)
    config.dj_mon = ActiveSupport::OrderedOptions.new
    config.dj_mon.username = "dj_mon"
    config.dj_mon.password = "password"

    if Rails.version > "3.1"
      initializer "DJMon precompile hook" do |app|
        app.config.assets.precompile += ['dj_mon.js', 'dj_mon.css']
      end
    end

  end
end
