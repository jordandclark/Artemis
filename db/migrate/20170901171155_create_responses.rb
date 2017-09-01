class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.references :respondent, foreign_key: true
      t.references :question, foreign_key: true
      t.integer :section_number
      t.string :user_selection
      t.integer :user_score
      t.timestamps
    end
  end
end
