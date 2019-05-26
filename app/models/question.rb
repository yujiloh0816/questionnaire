class Question < ApplicationRecord
  # attr_accessible :content, :survey_id
  belongs_to :survey
  has_many :answers
end
