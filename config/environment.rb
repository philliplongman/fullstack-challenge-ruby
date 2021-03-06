require "rubygems"
require "bundler"

Bundler.require(:default)
Bundler.require(:default, Sinatra::Base.environment)

require "sinatra/json"

require_all "models"

configure do
  set :server, :puma
  set :json_encoder, :to_json
end

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

set :root, File.dirname(".")
