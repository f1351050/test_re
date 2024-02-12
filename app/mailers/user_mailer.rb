class UserMailer < ApplicationMailer
    default from: 'testuser240214@gmail.com'
    layout 'mailer'

    def re_email
        @user = params[:user]
        @url = 'http://localhost:3000/re_page/mail_conf_end'
        mail(to: @user.email, subject:'testtest')
    end
end
