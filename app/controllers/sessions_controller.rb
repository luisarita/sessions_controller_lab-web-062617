class SessionsController < ApplicationController
    def create
        #byebug
        if !params[:name].present?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end
    def destroy
        if session[:name].present?
            session.delete :name
        end
    end
end
