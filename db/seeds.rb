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
    Question.create!(
      section_number: 1,
      question_text: 'Our CEO or another Senior Executive is a sponsor of diversity and inclusion.')
        Answer.create!(
        answer_text: 'We’ve taken no actions to address this.',
        answer_weight: 1
        )
        Answer.create!(
        answer_text: 'We taken actions to address this, but have not initiated a discussion.',
        answer_weight: 2
        )
        Answer.create!(
        answer_text: 'We’ve defined verbal and written standards to support this.',
        answer_weight: 3
        )
        Answer.create!(
        answer_text: 'We’ve defined standards and have integrated it into our workplace norms.',
        answer_weight: 4
        )
        Answer.create!(
        answer_text: 'We have standards and policies set to support this effort that represent best practice.',
        answer_weight: 5
        )



      # Question.create(
      # section_number: 1,
      # question_text: 'Our CEO or another Senior Executive is a sponsor of diversity and inclusion.',
      # :answer_questions => [
      #   {
      #     answer_text: 'We’ve taken no actions to address this.',
      #     answer_weight: 1
      #   },
      #   {
      #     answer_text: 'We taken actions to address this, but have not initiated a discussion.',
      #     answer_weight: 2
      #   },
      #   {
      #     answer_text: 'We’ve defined verbal and written standards to support this.',
      #     answer_weight: 3
      #   },
      #   {
      #     answer_text: 'We’ve defined standards and have integrated it into our workplace norms.',
      #     answer_weight: 4
      #   },
      #   {
      #     answer_text: 'We have standards and policies set to support this effort that represent best practice.',
      #     answer_weight: 5
      #   }
      #   ])
    end



    #
    # Question.create!(
    #   section_number: 1,
    #   question_text: 'We have a dedicated senior level employee overseeing and managing the company’s diversity performance.')
    # Question.create!(
    #   section_number: 1,
    #   question_text: 'We have a diversity/inclusion committee that meets on a regular basis.')
    # Question.create!(
    #   section_number: 1,
    #   question_text: 'We have a diversity and inclusion strategy with clear metrics and goals.')
    # Question.create!(
    #   section_number: 1,
    #   question_text: 'Our diversity and inclusion goals are integrated into the companyorganization’s strategic plan.')
    # Question.create!(
    #   section_number: 2,
    #   question_text: 'Our talent management strategy links to the organization’s broader diversity and inclusion strategy and goals')
    # Question.create!(
    #   section_number: 2,
    #   question_text: 'We are successful in recruiting and retaining Board leaders, senior management, and other leadership positions from diverse backgrounds with the expertise and ability to execute our strategic plan.')
    # Question.create!(
    #   section_number: 2,
    #   question_text: 'All job descriptions include diversity and inclusion statements.')

end

Seed.begin
