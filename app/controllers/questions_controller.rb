class QuestionsController < ApplicationController

  def index
    binding.pry
  end

  def new
  end

  def create
   @question = Question.create(build_question)
   if @question.save
     binding.pry
     redirect_to @question
   else
     render 'new'
   end
  end

  def show
    @question = find_question
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def question_params
      params.require(:question).permit(:title, :body)
    end

    def build_question
      question = question_params
      question[:asker] = current_user
      return question
    end

    def find_question
      Question.find(params[:id])
    end

end
