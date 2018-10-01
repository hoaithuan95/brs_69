class CommentsController < ApplicationController
  before_action :logged_in_user
  def create
    @comment = Comment.new comment_params
    @comment.user = current_user
    if @comment.save
      respond_to do |format|
        format.html {redirect_to @user}
        format.js
      end
    else
      render :new
    end
   end
end
