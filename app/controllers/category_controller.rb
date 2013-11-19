class CategoryController < ApplicationController
  # GET /category/1
  def show
    @posts = Post.find :all, :conditions => ["category_id = ?", params[:id]]
  end
end
