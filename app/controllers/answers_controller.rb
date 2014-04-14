class AnswersController < ApplicationController
  before_filter :authorize, only: [:new, :create]

  def new
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = current_user.answers.new(answer_params)
    if @answer.save
      flash[:notice] = "answer created"
      @question.answers << @answer
      redirect_to question_path(@question)
    else
      render 'new'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content, :question_id)
  end
end
