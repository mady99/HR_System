class Employee < ApplicationRecord
    has_one :division
    has_one :team
    # belongs_to :team

    validates :name, presence: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :job, presence: true
    validates :salary, numericality: true
    validates :employment_status, presence: true
end
