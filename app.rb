require 'sinatra'
require 'data_mapper'
require './models/zipcode.rb'

DataMapper.setup(:default, 'postgres://localhost/us_zipcode')
DataMapper.finalize.auto_upgrade!
