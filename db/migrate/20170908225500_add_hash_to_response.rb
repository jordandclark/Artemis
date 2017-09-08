class AddHashToResponse < ActiveRecord::Migration[5.1]
  def change
    add_column :responses, :one_hash, :text
    add_column :responses, :two_hash, :text
    add_column :responses, :three_hash, :text

  end
end
