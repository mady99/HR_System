class Goal < ApplicationRecord
    # belongs_to :team, optional: true
    has_one :team

    validates :title, presence: true
    validates :description, length: { maximum: 25 }
    # validates :start_date, 
    # validates :finish_date, 
    validates :attrib, presence: true
    validates :status, presence: true
end
