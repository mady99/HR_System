class Division < ApplicationRecord
    belongs_to :employee
    has_many :teams

    validates :name, presence: true
    validates :description, length: { maximum: 25 }
    validates :members, presence: true
    validates :team_lead, presence: true
end
