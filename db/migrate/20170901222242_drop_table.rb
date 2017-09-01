class DropTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :answer_questions
    create_table :answers_questions do |t|
      t.integer "answer_id"
      t.integer "question_id"
    end
  end
end
