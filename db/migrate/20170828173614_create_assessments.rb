class CreateAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :assessments do |t|
      t.integer :remoteOneValue
      t.integer :remoteTwoValue
      t.integer :remoteThreeValue
      t.integer :remoteFourValue
      t.integer :remoteFiveValue

      t.integer :strategyOneValue
      t.integer :strategyTwoValue
      t.integer :strategyThreeValue
      t.integer :strategyFourValue
      t.integer :strategyFiveValue
      t.integer :strategySixValue

      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
