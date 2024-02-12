class RePageController < ApplicationController
    def index
    end

    def create
        @inquiry = Inquiry.new(tempo_name: session[:tempo_name] ,
                              manager: session[:manager],
                              email: session[:email])
        if @inquiry.save
            UserMailer.with(user: @inquiry).re_email.deliver
            redirect_to("/re_page/re_end")
        end
    end
end
