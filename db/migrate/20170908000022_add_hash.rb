class AddHash < ActiveRecord::Migration[5.1]
  def change
    add_column :responses, :answer_hash, :text
  end
end
