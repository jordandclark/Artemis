class Quiz < ApplicationRecord
  has_many :questions
  accepts_nested_attributes_for :questions
  private
  def quiz_params
    params.permit(:name, questions_attributes: [:id, :section_number, :question_text])
  end
end
