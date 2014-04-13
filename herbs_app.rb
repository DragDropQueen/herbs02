require 'sinatra/base'

class HerbsApp < Sinatra::Application
  get '/' do
    herb_table = DB[:herbs]

    erb :index, :locals => {:herb_friends => herb_table.to_a}
  end

  post '/' do
    herb_table = DB[:herbs]
    herb_table.insert(:name => params[:herb_name], :part => params[:herb_part])
    redirect '/'
  end

end