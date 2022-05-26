class QuestionsController < ApplicationController

  def new
    @question = Question.new
    @quiz = Quiz.find(params[:quiz_id])
    # @question.quiz = @quiz
  end

  def create
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.new(question_params)
    @question.quiz = @quiz
      if @question.save
        redirect_to quizzes_path
      else
      render 'quizzes/show'
      end
  end

  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:question).permit(:statement, :score)
  end
end


# def new
#   @question = Question.find(params[:question_id])
#   @option = Option.new
# end

# def create
#   @option = Option.new(option_params)
#   @question = Question.find(params[:question_id])
#   @option.question = @question
#   if @option.save
#     redirect_to quiz_path(@question.quiz)
#   else
#     render 'quizzes/show'
#   end
# end
# private

# def option_params
#   params.require(:option).permit(:text, :correct)
# end
# end
