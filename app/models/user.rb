class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :competitions, :through => :user_competitions
  has_many :user_competitions
  has_many :dailies
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
