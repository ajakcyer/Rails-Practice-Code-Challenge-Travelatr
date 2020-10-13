class PostsController < ApplicationController

    def new
        @post = Posts.new
    end

    def show
        @post = Post.find(params[:id])
    end
    

    def create
        @post = Post.new(post_params)
        if @object.save
          flash[:success] = "Object successfully created"
          redirect_to @object
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
          flash[:success] = "Object was successfully updated"
          redirect_to post_path(@post)
        else
          flash[:error] = "Something went wrong"
          redirect_to edit_post_path(@post)
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :likes)
    end
       
end
