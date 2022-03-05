# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def welcome_mail
        user = User.new(name: 'Mady', email: 'mady@gmail.com' , password: '123')
        
        UserMailer.with(user: user).welcome_mail
    end
end
