class Survey < ApplicationRecord
  # attr_accessible :name
  has_many :questions
end
