class AddSectionToResponses < ActiveRecord::Migration[5.1]
  def change
    add_column :responses, :section_one, :text, array: true, default: []
    add_column :responses, :section_two, :text, array: true, default: []
    add_column :responses, :section_three, :text, array: true, default: []
    add_column :responses, :section_four, :text, array: true, default: []
    add_column :responses, :section_five, :text, array: true, default: []
    add_column :responses, :section_six, :text, array: true, default: []
    add_column :responses, :section_seven, :text, array: true, default: []
  end
end
