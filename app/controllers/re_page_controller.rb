class RePageController < ApplicationController
    def index
    end

    def create
        inquiry = Inquiry.new(tempo_name: session[:tempo_name] ,
                              manager: session[:manager],
                              email: session[:email])
        if inquiry.save
            session[:tempo_name].clear
            session[:manager].clear
            session[:email].clear
        end
        redirect_to("/re_page/re_end")
    end
end
