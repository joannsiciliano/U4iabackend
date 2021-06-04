class SocialMediaPostsController < ApplicationController
  skip_before_action :authorized, only: [:index, :update]

  def index
    @posts=SocialMediaPost.all
    render json: @posts
  end

  def create
    @post= SocialMediaPost.create(post_params)
    render json: @post
  end
 def update
 
  @post= SocialMediaPost.find(params[:id])
 
  @post.update({likes: params[:social_media_post][:likes]})
  render json: @post
 end
  def destroy
    @post=SocialMediaPost.find(params[:id])
    @post.destroy
  end

  private

  def post_params
    params
      .require(:social_media_post)
      .permit(:message, :featured_image, :likes, :dislikes)
      .merge(user_id: @user.id, likes: 0, dislikes: 0)
  end
end
