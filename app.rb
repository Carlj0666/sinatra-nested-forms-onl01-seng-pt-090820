require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab!"
    end

    get '/new' do
      erb :"pirates/new"
    end


    #ISSUES FROM HERE, PARAMS LOOK GOOD, RETURNED INFO NOT CORRECT? CHECK PRY
    post '/pirates' do
      #binding.pry
      @pirate = Pirate.new(params[:name], params[:weight], params[:height])

      params[:ships].each do |ship|
        
        Ship.new(params[:name], params[:type], params[:booty])
      end

      erb :"pirates/show"
    end

  end
end
