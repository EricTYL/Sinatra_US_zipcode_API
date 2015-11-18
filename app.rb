require 'sinatra'
require 'data_mapper'
require './models/zipcode.rb'
require 'json'

DataMapper.setup(:default, 'postgres://localhost/us_zipcode')
DataMapper.finalize.auto_upgrade!

get '/zipcode/:id' do
  content_type :json
  zipcode = Zipcode.get(params[:id])
  { zip: zipcode.zip, city: zipcode.city, state: zipcode.state, lat: zipcode.lat, lng: zipcode.lng }.to_json
  #erb :zipcode_view
end
