ENV['RACK_ENV'] = 'test'

require("rspec")
require("pg")
require("./lib/list")
require("./lib/task")
require("sinatra/activerecord")
require("pry")

RSpec.configure do |config|
  config.after(:each) do
    Task.all().each() do |task|
      task.destroy()
    end
  end
end
