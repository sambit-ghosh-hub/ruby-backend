require 'date'
class JobdetailController < ApplicationController

    skip_before_action :verify_authenticity_token
    def index
        puts "*******************"
        puts session[:current_user_id]
        current_user=User.find_by_id(session[:current_user_id])  
        if !current_user.nil?
        render json: Jobdetail.all
        else 
            render json: "Kindly login to view job details"
        end
    end

    def show
        puts "*******************"
        puts session[:current_user_id]
        current_user=User.find_by_id(session[:current_user_id])  
        if !current_user.nil?
        render json: Jobdetail.all
        else 
            render json: "Kindly login"
        end
    end


    def create    

        job= Jobdetail.create('jobtitle': params[:jobtitle],
            'jobdescription': params[:jobdescription], 
            'companyname': params[:companyname],
            'jobtype': params[:jobtype],
            'location': params[:location],
            'salary': params[:salary],
            'posteddate': Date.parse(params[:posteddate]),
            'domain': params[:domain],
            'jobcode': params[:jobcode],
            'skillsrequired': params[:skillsrequired],
            'applicationstatus': params[:applicationstatus]
             )  
        if(job.errors.any?)               
            render json: "Job cannot be created."    
        else 
            render json: "Job Details Saved!"   
        end 

    end



end
