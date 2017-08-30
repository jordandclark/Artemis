class Diversity < ApplicationRecord
  validates :diversityOneValue,:diversityTwoValue,:diversityThreeValue, :diversityFourValue, :diversityFiveValue,:diversitySixValue,:diversitySevenValue,:diversityEightValue, :diversityNineValue, :diversityTenValue,
  :employmentOneValue, :employmentTwoValue, :employmentThreeValue, :employmentFourValue, :employmentFiveValue, :employmentSixValue,:employmentSevenValue, :employmentEightValue, :employmentNineValue, :employmentTenValue, :employmentElevenValue, :employmentTwelveValue, :employmentThirteenValue, :employmentFourteenValue,
  :commOneValue, :commTwoValue, :commThreeValue, :commFourValue, :commFiveValue,
  :cultureOneValue, :cultureTwoValue, :cultureThreeValue, :cultureFourValue, :cultureFiveValue, :cultureSixValue,:cultureSevenValue, :cultureEightValue, :cultureNineValue, :cultureTenValue, :cultureElevenValue, :cultureTwelveValue, :cultureThirteenValue, :cultureFourteenValue,:cultureFifteenValue,
  :name, :email, presence: { message: "was left unanswered." }
end
