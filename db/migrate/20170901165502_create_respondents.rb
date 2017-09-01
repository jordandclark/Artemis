class CreateRespondents < ActiveRecord::Migration[5.1]
  def change
    create_table :respondents do |t|
      t.string "user_email"
      t.string "user_name"
      t.string "organization"
      t.integer "section_one_score"
      t.integer "section_two_score"
      t.integer "section_three_score"
      t.integer "section_four_score"
      t.integer "section_five_score"
      t.integer "section_six_score"
      t.integer "section_seven_score"
      t.timestamps
    end
  end
end
