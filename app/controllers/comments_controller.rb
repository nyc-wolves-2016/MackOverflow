class CommentsController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @comment = Comment.create(build_comment)

    if @comment.save
      redirect_to @question
    else
      render 'questions#show'
    end
  end

  def update

  end

  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

    def build_comment
      {body: comment_params, commenter: current_user, commentable: commentable}
    end

    def find_answer
      Answer.find(params[:answer_id])
    end

    def find_question
      Question.find(params[:question_id])
    end

    def commentable
      if params[:answer_id]
        find_answer
      else
        find_question
      end
    end

end
