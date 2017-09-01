class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :answer_text
      t.integer :answer_weight
    end
  end
end
