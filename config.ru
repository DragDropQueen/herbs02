require_relative 'herbs_app'
require 'sequel'

DB = Sequel.connect('postgres://gschool_user:password@localhost/herbs_development')

run HerbsApp
