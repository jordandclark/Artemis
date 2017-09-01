class CreateJoinTableAnswerQuestion < ActiveRecord::Migration[5.1]
  def change
    create_join_table :answers, :questions do |t|
      t.index [:answer_id, :question_id]
      t.index [:question_id, :answer_id]
    end
  end
end
