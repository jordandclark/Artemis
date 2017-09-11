class DropQuestionId < ActiveRecord::Migration[5.1]
  def change
    remove_columns :responses, :question_id

  end
end
