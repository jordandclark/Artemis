class QuizzesController < ApplicationController

  def index
  end

  def new
    @questions = Question.all
    @answers = Answer.all
    @quiz = Quiz.new
    @quiz.save
    @quiz.name = "Rob"
    @questions = @questions.each do |q|
      q.quiz_id = @quiz.id
    end
  end

  def show

  end
end
