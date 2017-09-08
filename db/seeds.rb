# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all
Quiz.destroy_all
Answer.destroy_all


class Seed

  def self.begin
    seed = Seed.new
    seed.make_questions
  end

  def make_questions
    question_list = [
      ['Our CEO or another Senior Executive is a sponsor of diversity and inclusion.', 1 ],
      ['We have a dedicated senior level employee overseeing and managing the company’s diversity performance.', 1 ],
      ['We have a diversity/inclusion committee that meets on a regular basis.', 1 ],
      ['We have a diversity and inclusion strategy with clear metrics and goals.', 1 ],
      ['Our diversity and inclusion goals are integrated into the company’s strategic plan.', 1 ]
    ]
    question_list.each do | question |
      quiz = Quiz.create!
      Question.create!(
        quiz_id: quiz.id,
        section_number: question[1],
        question_text: question[0],
        :answers_attributes => [
        {
          answer_text: 'We’ve taken no actions to address this.',
          answer_weight: 1
        },
        {
          answer_text: 'We taken actions to address this, but have not initiated a discussion.',
          answer_weight: 2
        },
        {
          answer_text: 'We’ve defined verbal and written standards to support this.',
          answer_weight: 3
        },
        {
          answer_text: 'We’ve defined standards and are in the process of integrating them into workplace norms.',
          answer_weight: 4
        },
        {
          answer_text: 'We’ve defined  standards and practices and fully integrated them into our workplace norms.',
          answer_weight: 5
        }]
      )
    end
  end
end
Seed.begin
