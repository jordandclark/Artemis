class Assessment < ApplicationRecord
    validates :remoteOneValue, presence: { message: "Question 1 was left unanswered." }

    validates :remoteTwoValue, presence: { message: "Question 2 was left unanswered." }

    validates :remoteThreeValue, presence: { message: "Question 3 was left unanswered." }

    validates :remoteFourValue, presence: { message: "Question 4 was left unanswered." }

    validates :remoteFiveValue, presence: { message: "Question 5 was left unanswered." }

    validates :strategyOneValue, presence: { message: "Question 6 was left unanswered." }

    validates :strategyTwoValue, presence: { message: "Question 7 was left unanswered." }

    validates :strategyThreeValue, presence: { message: "Question 8 was left unanswered." }

    validates :strategyFourValue, presence: { message: "Question 9 was left unanswered." }

    validates :strategyFiveValue, presence: { message: "Question 10 was left unanswered." }

    validates :strategySixValue, presence: { message: "Question 11 was left unanswered." }

    validates :name, presence: { message: "Please enter your name." }

    validates :email, presence: { message: "Please enter your email." }

end
