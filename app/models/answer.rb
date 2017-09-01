class Answer < ApplicationRecord
  has_many :answers_questions
  has_many :questions, through: :answers_questions
end
