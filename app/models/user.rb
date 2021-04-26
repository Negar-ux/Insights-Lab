class User < ApplicationRecord
  acts_as_token_authenticatable


  has_many :interviews
  has_many :notes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
