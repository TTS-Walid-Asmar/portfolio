class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = @commentable.comments.new comment_params
    @comment.user = current_user
    if @comment.save
        redirect_to @commentable, notice: "Your comment was successfully posted."
        else
        redirect_to @commentable, notice: "Woah, buddy! Looks like something went wrong. Make sure to include some text in that bad boy."
      end
  end


  private

    def comment_params
      params.require(:comment).permit(:body)
    end
end
