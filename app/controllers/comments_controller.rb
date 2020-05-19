class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/quotes/#{comment.quote.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, quote_id: params[:quote_id])
  end
end
