require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :'../views/super_hero'
    end
    
    post '/teams' do
      @team_name = ["team"]["name"]
      @team_motto = ["team"]["motto"]
      @team_members = ["team"]["members"]
      
      erb :'../views/team'
    end

end
