class Team < ApplicationRecord
    has_many :employees
    has_many :goals
    belongs_to :division

    validates :name, presence: true
    validates :description, length: { maximum: 25 }
    validates :members, presence: true
    validates :team_lead, presence: true
end
 