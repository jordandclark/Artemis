# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all

class Seed

  def self.begin
    seed = Seed.new
    seed.make_questions
  end

  def make_questions
    Question.create!(
      section_number: 1,
      question_text: 'Our CEO or another Senior Executive is a sponsor of diversity and inclusion.')
    Question.create!(
      section_number: 1,
      question_text: 'We have a dedicated senior level employee overseeing and managing the company’s diversity performance.')
    Question.create!(
      section_number: 1,
      question_text: 'We have a diversity/inclusion committee that meets on a regular basis.')
    Question.create!(
      section_number: 1,
      question_text: 'We have a diversity and inclusion strategy with clear metrics and goals.')
    Question.create!(
      section_number: 1,
      question_text: 'Our diversity and inclusion goals are integrated into the companyorganization’s strategic plan.')
  end

end

Seed.begin
