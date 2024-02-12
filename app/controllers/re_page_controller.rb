class RePageController < ApplicationController
    def index
    end

    

    def create
        inquiry = Inquiry.new(tempo_name: params[:tempo_name],
                              manager: params[:manager],
                              email: params[:email])
        inquiry.save
        redirect_to("/re_page/conf")
    end
end
