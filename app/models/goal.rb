class Goal < ApplicationRecord
    belongs_to :team

    validates :title, presence: true
    validates :description, length: { maximum: 25 }
    validates :start_date, numericality: true
    validates :finish_date, numericality: true
    validates :attrib, presence: true
    validates :status, presence: true
end
