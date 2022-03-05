class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_one_attached :profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable 

    # validates :password, confirmation: true
    # validates :password_confirmation, confirmation: true
    # validates :name, presence: true
    # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

    after_create do |job|
      mailer(self)
    end
    def mailer(user)
      UserMailer.with(user: user).welcome_mail.deliver_now
    end

end
