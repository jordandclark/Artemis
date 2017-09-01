<<<<<<< HEAD
class Question < ApplicationRecord
  
end
=======
class Question < ApplicationRecord
  has_many :responses
  has_many :respondents, through: :responses
  has_many :answers, through: :answer_questions
end
>>>>>>> 6178ef45bf97a6d407897c86725b0ba5d75e6e36
