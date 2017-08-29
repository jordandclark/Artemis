class CreateDiversities < ActiveRecord::Migration[5.1]
  def change
    create_table :diversities do |t|
      t.integer :diversityOneValue
      t.integer :diversityTwoValue
      t.integer :diversityThreeValue
      t.integer :diversityFourValue
      t.integer :diversityFiveValue
      t.integer :diversitySixValue
      t.integer :diversitySevenValue
      t.integer :diversityEightValue
      t.integer :diversityNineValue
      t.integer :diversityTenValue

      t.integer :employmentOneValue
      t.integer :employmentTwoValue
      t.integer :employmentThreeValue
      t.integer :employmentFourValue
      t.integer :employmentFiveValue
      t.integer :employmentSixValue
      t.integer :employmentSevenValue
      t.integer :employmentEightValue
      t.integer :employmentNineValue
      t.integer :employmentTenValue
      t.integer :employmentElevenValue
      t.integer :employmentTwelveValue
      t.integer :employmentThirteenValue
      t.integer :employmentFourteenValue

      t.integer :commOneValue
      t.integer :commTwoValue
      t.integer :commThreeValue
      t.integer :commFourValue
      t.integer :commFiveValue

      t.integer :cultureOneValue
      t.integer :cultureTwoValue
      t.integer :cultureThreeValue
      t.integer :cultureFourValue
      t.integer :cultureFiveValue
      t.integer :cultureSixValue
      t.integer :cultureSevenValue
      t.integer :cultureEightValue
      t.integer :cultureNineValue
      t.integer :cultureTenValue
      t.integer :cultureElevenValue
      t.integer :cultureTwelveValue
      t.integer :cultureThirteenValue
      t.integer :cultureFourteenValue
      t.integer :cultureFifteenValue

      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
