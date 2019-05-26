class Answer < ApplicationRecord
  # attr_accessible :content, :question_id
  belongs_to :question
end
