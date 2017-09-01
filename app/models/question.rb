class Question < ApplicationRecord
  has_many :responses
  has_many :respondents, through: :responses

  has_many :answer_questions
<<<<<<< HEAD
  has_many :answers, through: :answers_questions
=======
  has_many :answers, through: :answer_questions, dependent: :destroy
>>>>>>> 2bb555e44457827f9775a82457f1a8d0f793cda0
  accepts_nested_attributes_for :answers
end
