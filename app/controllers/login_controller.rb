require 'bcrypt'
class LoginController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        current_user=User.find_by_id(session[:current_user_id])
        
        render json: current_user
    end

    def create
         usr = User.find_by('email': params[:email])
        if (usr.nil?)
            render json: "Account does not exist"
        else
            if (usr.authenticate(params[:password]))
                session[:current_user_id] = usr.id
                puts "////////////////////////////"
                puts session[:current_user_id]
                puts "Logged In"
                render json:   {message: "Logged in Sucessfully." ,status: 100} 
            else 
                render json: "Incorrect Password"
            end            
        end 
    end
end
