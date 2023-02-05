require 'date'
class JobsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        current_user=User.find_by_id(session[:current_user_id])  
        if current_user != nil
        render json: Jobs.all
        else 
            render json: "Kindly login to view job details"
        end
    end


    def create    
        current_user=User.find_by_id(session[:current_user_id])  
        if current_user != nil
            job= Jobs.create('title': params[:title],
                'description': params[:description], 
                'location': params[:location],
                'jobtype': params[:jobtype],
                'salary': params[:salary],
                'company': params[:company],
                'domain': params[:domain],
                'jobcode': params[:jobcode],
                'skills': params[:skills],
                'posted_on': Date.today)  
            if(job.errors.any?)               
                render json: "Job cannot be created."    
            else 
                render json: "Job Details Saved!"   
            end 
        else
            render json: "Kindly login to create job details"
        end
    end


end
