class PostsController < ApplicationController
    before_action :set_post, only: %i[ show edit update destroy ]
  
    # GET /posts or /posts.json
    def index
      @posts = Post.all.order("created_at DESC").paginate(page: params[:page])
    end
  
    # GET /posts/1 or /posts/1.json
    def show
      views = @post.views + 1
      @post.update(views: views)
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.friendly.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def post_params
        params.require(:post).permit(:title, :body, :banner, :thumbnail)
      end
  end
  