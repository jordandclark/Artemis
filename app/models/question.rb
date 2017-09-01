class Question < ApplicationRecord
  has_many :responses
  has_many :respondents, through: :responses

  has_many :answers_questions
  has_many :answers, through: :answers_questions

  accepts_nested_attributes_for :answers
end
