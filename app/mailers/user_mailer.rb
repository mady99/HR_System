class UserMailer < ApplicationMailer
    def welcome_mail
        @user = params[:user]

        mail(to: "ahmed@gmail.com", subject: "You got a new User!")
    end
end
