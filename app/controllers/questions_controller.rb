class QuestionsController < ApplicationController
  def create
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.new(question_params)
    @question.quiz = @quiz
    if @question.save
      # or simply @restaurant since we have an instance of it on line 4
      redirect_to quiz_path(@question.quiz)
    else
      render 'quizzes/show'
    end
  end

  private

  def question_params
    params.require(:question).permit(:question, :score)
  end
end
