ENV['RACK_ENV'] ||= 'development'

require 'rubygems'
require 'bundler'

Bundler.require :default, ENV['RACK_ENV'].to_sym

require './todo_melodiest'
run TodoMelodiest
