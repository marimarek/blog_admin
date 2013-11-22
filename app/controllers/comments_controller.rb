class CommentsController < ApplicationController
  before_action :admin_only!, only: [:destroy]

  def create
	@post = Post.find(params[:post_id])
	@comment = @post.comments.build(params[:comment].permit!)
	@comment.save
	
	redirect_to @post
  end

  def destroy
	@comment = Comment.find(params[:id])
	@comment.destroy
	
	redirect_to @comment.post
  end
  
  def admin_only!
		if !signed_in?
		   redirect_to root_path
		end
	end
end
