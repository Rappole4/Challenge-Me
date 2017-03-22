class Competition < ApplicationRecord
	belongs_to :user
	has_many :challenges, :through => :compchallenges
	has_many :compchallenges
	validates :user_id, presence: true
end
