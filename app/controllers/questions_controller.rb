class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def create
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.new(question_params)
    @question.quiz = @quiz
    if @question.save
      redirect_to new_quiz_question_option_path(:quiz_id, :question_id)
    else
      render 'quizzes/show'
    end
  end

  def new
    @question = Question.new
    @quiz = Quiz.find(params[:quiz_id])
    @question.quiz = @quiz
  end

  private

  def question_params
    params.require(:question).permit(:statement, :score)
  end
end
