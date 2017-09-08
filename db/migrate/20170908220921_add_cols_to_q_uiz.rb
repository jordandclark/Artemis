class AddColsToQUiz < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :cultureOne, :integer
    add_column :quizzes, :cultureTwo, :integer
    add_column :quizzes, :cultureThree, :integer
    add_column :quizzes, :cultureFour, :integer
    add_column :quizzes, :cultureFive, :integer
  end
end
