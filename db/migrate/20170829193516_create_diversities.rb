class CreateDiversities < ActiveRecord::Migration[5.1]
  def change
    create_table :diversities do |t|

      t.timestamps
    end
  end
end
