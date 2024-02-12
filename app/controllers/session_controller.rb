class SessionController < ApplicationController
    def index

    end
    
    def create
        session[:tempo_name] = params[:session][:tempo_name]
        session[:manager] = params[:session][:manager]
        session[:email] = params[:session][:email]
        redirect_to("/re_page/conf")
    end
end
