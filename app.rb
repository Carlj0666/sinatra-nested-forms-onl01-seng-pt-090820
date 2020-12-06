require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
      get '/' do
      "Welcome to the Nested Forms Lab!"
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    #ISSUES FROM HERE, PARAMS LOOK GOOD, RETURNED INFO NOT CORRECT? CHECK PRY
    post '/pirates' do
      #binding.pry
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
    
      Ship.new(ship)
      
    end
    @ships = Ship.all
    erb :"pirates/show"
    end

  end
end
