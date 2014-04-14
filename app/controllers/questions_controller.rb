class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = 'New question added!'
      redirect_to root_path
    else
      render new_question_path
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to root_path
  end


  private
      def question_params
        params.require(:question).permit(:title, :content)
      end

end
