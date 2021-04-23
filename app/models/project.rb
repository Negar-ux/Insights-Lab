class Project < ApplicationRecord
  has_many :interviews
  validates :name, presence: true

end
