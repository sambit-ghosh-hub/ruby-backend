class CandidateprofileController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        current_user=User.find_by_id(session[:current_user_id])  
        if !current_user.nil?
        render json: Candidateprofile.all
        else
        render json: "Kindly login"
    end

    def create    

        profile= Candidateprofile.create('firstname': params[:firstname],
            'lastname': params[:lastname], 
            'email': params[:email],
            'contact': params[:contact],
            'address': params[:address],
            'about': params[:about],
            'profilepic': params[:profilepic],
            'company': params[:company],
            'ctc': params[:ctc],
            'experience': params[:experience],
            'role': params[:role],
            'skills': params[:skills],
            'resumelink': params[:resumelink],
            'expectedsalary': params[:expectedsalary],
            'preferedlocation': params[:preferedlocation]
             )  
        if(profile.errors.any?)               
            render json: "Profile cannot be created."    
        else 
            render json: "Profile Details Saved!"   
        end 

    end



end
