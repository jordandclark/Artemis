class Question < ApplicationRecord
  has_many :responses
  has_many :answer_questions
  has_many :respondents, through: :responses
  has_many :answers, through: :answer_questions
end

user > user_selection > question > answer_id > answer_text

user > user_score > question > answer_id > answer_weight
