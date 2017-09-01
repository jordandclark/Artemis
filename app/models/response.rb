class Response < ApplicationRecord
  belongs_to :respondent
  belongs_to :question
end
