class OptionsController < ApplicationController
  def create
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.find(params[:question_id])
    @option = Option.new(option_params)
    @option.question = @question
    if @option.save
      redirect_to quiz_path(@question.quiz)
    else
      render 'quizzes/show'
    end
  end

  def new
    @option = Option.new
  end

  private

  def option_params
    params.require(:option).permit(:text, :correct)
  end
end
