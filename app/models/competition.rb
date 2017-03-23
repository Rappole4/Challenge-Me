class Competition < ApplicationRecord
	belongs_to :user
	belongs_to :challenge
	validates :user_id, presence: true
	has_many :participants, :through => :user_competitions, source: :user
	has_many :user_competitions
end
