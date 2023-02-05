require 'date'
class CandidatejobsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        # current_user=User.find_by_id(session[:current_user_id])  
        # if current_user != nil

        # sample= Candidatejobs.where(:candidateid => params[:candidateid]).joins(:jobs)

        sample = Candidatejobs.all

        render json: sample
        # else 
        #     render json: "Kindly login to view candidate's job details"
        # end
    end

    def displaycandidate

    end


    def show
        jobs = Candidatejobs.All
       sample= jobs.find_by(params[:candidateid])
        puts "**************"
        puts params[:candidateid]
        # jobs1= Candidatejobs.joins(:jobs, on: 'candidatejobs.jobcode = jobs.jobcode').find(params[:candidateid])
        render json: sample
    # rescue => e
    #     render json: "Book not found. Kindly input correct data."
    end


    def create    

        job= Candidatejobs.create('candidateid': params[:candidateid],
            'jobcode': params[:jobcode],
            'applicationstatus': params[:applicationstatus], 
            'appliedon': Date.today)  
        if(job.errors.any?)               
            render json: "Job cannot be added to candidate."    
        else 
            render json: "Job Details Saved to candidate!"   
        end 

    end




end
