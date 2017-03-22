class Challenge < ApplicationRecord
	has_many :competitions, :through => :compchallenges
	has_many :compchallenges
end
