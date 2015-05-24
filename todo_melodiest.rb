require 'yaml'

class TodoMelodiest < Melodiest::Application
  setup 'b76e07e36453cda7c3dd77d8c5836fb0554ad1a38a0a250a494f0a8bb64a226e'

  set :app_file, __FILE__
  set :views, Proc.new { File.join(root, "app/views") }

  use Rack::Csrf, raise: true

  configure do
    Sequel.connect YAML.load_file(File.expand_path("../config/database.yml", __FILE__))[settings.environment.to_s]
  end
end

%w{app/models app/routes}.each do |dir|
  Dir[File.join(dir, '**/*.rb')].each do |file|
    require_relative file
  end
end
