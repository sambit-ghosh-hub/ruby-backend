class GetappliedjobsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        jobs  = Candidateapplication.joins('join jobdetails on candidateapplications.jobcode=jobdetails.jobcode').select('jobdetails.*').where('userid' => params[:userid])
        if jobs
        render json: jobs
        else render json: "No jobs found for user"
        end
    end


end
