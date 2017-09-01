class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :section_number
      t.string :question_text
    end
  end
end
