class JobstatuscountController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        sample = Candidateapplication.where('userid' => params[:userid]).select(:candidateapplicationstatus, 'COUNT(candidateapplicationstatus)').group(:candidateapplicationstatus)

        render json: sample

    end
end
