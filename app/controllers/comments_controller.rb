class CommentsController < ApplicationController
    def index
        @comments = Comment.all
    end

    def new
        @comment = Comment.new 
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.save 
        redirect_to comment_path(@comment)
    end

    def show
        get_comment
    end

    def edit
        get_comment
    end

    def update
        get_comment
        @comment.update(comment_params)
        redirect_to comment_path(@comment)
    end
    
    def destroy
        get_comment
        @comment.destroy
        redirect_to comments_path 
    end

    private

    def comment_params
        params.require(:comment).permit(:content)
    end

    def get_comment
        @comment = Comment.find_by_id(params[:id])
    end
end
