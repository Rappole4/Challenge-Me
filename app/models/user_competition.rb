class UserCompetition < ApplicationRecord
	enum status: [:quiter, :fighter]
	belongs_to :user
	belongs_to :competition
end
