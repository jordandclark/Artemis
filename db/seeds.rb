# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all
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
      ['Our diversity and inclusion goals are integrated into the company’s strategic plan.', 1 ],
      ['Our talent management strategy links to the organization’s broader diversity and inclusion strategy and goals.', 2 ],
      ['We are successful in recruiting and retaining Board leaders, senior management, and other leadership positions from diverse backgrounds with the expertise and ability to execute our strategic plan.', 2 ],
      ['All job descriptions include diversity and inclusion statements.', 2 ],
      ['Our interview questions are designed to measure diversity and cultural competence.', 2 ],
      ['We have increased the percentage of diverse employee hires over the same period last year.', 2 ],
      ['We have documented processes that promote a diverse pool of candidates in our hiring, recruiting, retention, and promotion.', 2 ],
      ['Our talent management strategy diversity and inclusion goals have been tailored to individual sites and markets.', 2 ],
      ['Employees have participated in at least one diversity and inclusion or cultural sensitivity training session in the past 12 months.', 2],
      ['Unconscious bias training has been completed by all managers and senior leaders in the organization.', 2],
      ['We conduct regular employee engagement surveys with feedback loops for action in place.', 2],
      ['Our orientation for new employees addresses the organization’s  diversity and inclusion beliefs, strategy and policies.', 2],
      ['Diversity and inclusion policies and beliefs have informed our learning and development strategy.', 2],
      ['Performance appraisals and promotion decisions are monitored to ensure that they are fair and that all employees are being given the opportunity to advance.', 2],
      ['Our work place is accessible to non-English speakers and individuals with disabilities.', 2],
      ['We support and enable the formation of Employee Resource Groups and has feedback loops for action in place.', 2]
    ]
    question_list.each do | question |
      Question.create!(
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
