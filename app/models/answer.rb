class Answer < ApplicationRecord
  has_many :answer_questions
  has_many :questions, through: :answer_questions
end
