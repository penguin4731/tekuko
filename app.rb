require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models'
require 'dotenv/load'
require 'open-uri'
require 'json'
require 'net/http'
require 'sinatra/activerecord'

get '/' do
  @mentors = Mentor.all.order("id asc")
  @vote1 = Mentor.all.order("count desc").first
  @vote2 = Mentor.all.order("count desc").second
  @vote3 = Mentor.all.order("count desc").third
  erb :index
end
