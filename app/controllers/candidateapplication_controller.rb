class CandidateapplicationController < ApplicationController

    skip_before_action :verify_authenticity_token
    

    def index
        # current_user=User.find_by_id(session[:current_user_id])  
        # if current_user != nil

       sample2  = Candidateapplication.joins('join jobdetails on candidateapplications.jobcode=jobdetails.jobcode').select('jobdetails.*').where('userid' => params[:userid])

     
        render json: sample2
        # else 
        #     render json: "Kindly login to view candidate's job details"
        # end
    end


    def create    

        job= Candidateapplication.create('userid': params[:userid],
            'jobcode': params[:jobcode],
            'candidateapplicationstatus': params[:candidateapplicationstatus], 
            'location': params[:location], 
            'applieddate': Date.today) 
        if(job.errors.any?)               
            render json: job.errors
        else 
            render json: "Job Details Saved to candidate!"
        end 

    end

end
