class UserMailer < ApplicationMailer
    default from: 'testuser240214@gmail.com'
    layout 'mailer'

    def re_email
        @user = params[:user]
        unique_id = @user.unique_id
        @url = 'http://localhost:3000/re_page/' + unique_id
        mail(to: @user.email, subject:'testtest')
    end
end
