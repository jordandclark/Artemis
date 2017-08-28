class Assessment < ApplicationRecord
    validates :remoteOneValue,:remoteTwoValue,:remoteThreeValue, :remoteFourValue, :remoteFiveValue, :strategyOneValue, :strategyTwoValue, :strategyThreeValue, :strategyFourValue, :strategyFiveValue, :strategySixValue, presence: { message: "was left unanswered." }
end
