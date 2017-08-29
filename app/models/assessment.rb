class Assessment < ApplicationRecord
    validates :remoteOneValue,:remoteTwoValue,:remoteThreeValue, :remoteFourValue, :remoteFiveValue, :strategyOneValue, :strategyTwoValue, :strategyThreeValue, :strategyFourValue, :strategyFiveValue, :strategySixValue,:name, :email, presence: { message: "was left unanswered." }
end
