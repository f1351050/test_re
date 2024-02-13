class RePageController < ApplicationController
    def index
    end

    def create
        @inquiry = Inquiry.new(unique_id: SecureRandom.alphanumeric(20) ,
                              tempo_name: session[:tempo_name] ,
                              manager: session[:manager],
                              email: session[:email])
        if @inquiry.save
            UserMailer.with(user: @inquiry).re_email.deliver
            
            redirect_to("/re_page/re_end")
        end
    end

    def show
    end
end
