class ProfilebyemailController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        puts params[:email]
        puts "*****************"
        profile = Candidateprofile.find_by('email': params[:email])    
        render json: profile
    
    end

end
