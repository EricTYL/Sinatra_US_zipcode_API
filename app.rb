require 'sinatra'
require 'data_mapper'
require './models/zipcode.rb'

DataMapper.setup(:default, 'postgres://localhost/us_zipcode')

get '/zipcode/:id' do
  @zipcode = Zipcode.get(params[:id])
  erb :zipcode_view
end

DataMapper.finalize.auto_upgrade!
