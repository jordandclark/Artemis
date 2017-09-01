class CreateJoinTableUserQuestion < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :questions do |t|
      t.index [:user_id, :question_id]
      t.index [:question_id, :user_id]
      t.string :user_selection
      t.integer :user_score
      t.integer :section_number
    end
  end
end
