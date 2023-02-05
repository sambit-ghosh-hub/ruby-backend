class JobsbystatusController < ApplicationController
    skip_before_action :verify_authenticity_token

def create


    
    sample2  = Candidateapplication.joins('join jobdetails on candidateapplications.jobcode=jobdetails.jobcode').select('jobdetails.posteddate,jobdetails.jobtitle,candidateapplications.*').where('userid' => params[:userid], 'candidateapplicationstatus' => params[:candidateapplicationstatus])
    render json: sample2

end



end
