class CreateAnswerQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_questions do |t|
      t.references :question, foreign_key: true
      t.references :answer, foreign_key: true
      t.timestamps
    end
  end
end
