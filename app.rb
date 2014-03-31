require 'sinatra/base'

class App < Sinatra::Base

  PRODUCTS = []

  get '/' do
    erb :index, :locals => {:products => PRODUCTS}
  end

  get '/products/new' do
    erb :new_product
  end

  post '/' do
    PRODUCTS << params[:new_product]
    redirect '/'
  end
end