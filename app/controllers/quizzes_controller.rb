class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
    user = current_user
    @quizzes_user = Quiz.where(user: user)
  end

  def show
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions
  end

  def new
    @quiz = Quiz.new
    @question = Question.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.user = current_user
    if @quiz.save
      redirect_to @quiz, notice: "Quiz was sucessfully created."
    else
      render :new
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:name, :token, :time)
  end
end
