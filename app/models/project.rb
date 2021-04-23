class Project < ApplicationRecord
  has_many :interviews, dependent: :destroy
  belongs_to :user

end
