class ChangeTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :answers_questions
    create_join_table :answers, :questions do |t|
      t.index [:answer_id, :question_id]
      t.index [:question_id, :answer_id]
    end
  end
end
