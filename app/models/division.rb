class Division < ApplicationRecord
    # belongs_to :employee
    has_many :teams
    has_one :employee

    validates :name, presence: true
    validates :description, length: { maximum: 25 }
    # validates :teams, presence: true
end
