class QuestionsController < ApplicationController
  before_filter :authorize, only: [:new, :create, :edit, :update, :destroy]

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.new(question_params)
    if @question.save
      flash[:notice] = 'New question added!'
      redirect_to root_path
    else
      render new_question_path
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to question_path
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    flash[:notice] = "Your question was removed."
    @question.destroy
    redirect_to root_path
  end

  private
    def question_params
      params.require(:question).permit(:title, :content)
    end

end
