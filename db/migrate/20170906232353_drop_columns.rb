class DropColumns < ActiveRecord::Migration[5.1]
  def change
    remove_columns :responses, :user_score
    remove_columns :responses, :section_number
  end
end
