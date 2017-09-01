class AddAssociationToAnswer < ActiveRecord::Migration[5.1]

  def up

  end
  def down
    drop_table :answers_questions, :questions_users
    drop_table :questions_users
  end
end
