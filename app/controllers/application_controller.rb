class ApplicationController < ActionController::Base

    get '/' do 
        erb :welcome
    end

    
end
