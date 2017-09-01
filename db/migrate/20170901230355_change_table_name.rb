class ChangeTableName < ActiveRecord::Migration[5.1]
  def change
    drop_table :answers_questions
  end
end
