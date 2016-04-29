class CommentsController < ApplicationController
    def create
        @forum = Forum.find(params[:forum_id])
        @message = @forum.messages.find(params[:message_id])
        @comment = @message.comments.create(comment_params)
        if company_signed_in?
            @comment.author = current_company.email
        elsif user_signed_in?
            @comment.author = current_user.email
        end
        if @comment.save
            redirect_to forum_message_path(@forum,@message)
        else
            redirect_to root_path
        end
    end
    
    def edit
        @forum = Forum.find(params[:forum_id])
        @message = @forum.messages.find(params[:message_id])
        @comment = @message.comments.find(params[:id])
    end
    
    def update
        @forum = Forum.find(params[:forum_id])
        @message = @forum.messages.find(params[:message_id])
        @comment = @message.comments.find(params[:id])
        if @comment.update(comment_params)
            redirect_to forum_message_path(@forum,@message)
        else 
            render "edit"
        end
    end
    
    def destroy
        @forum = Forum.find(params[:forum_id])
        @message = @forum.messages.find(params[:message_id])
        @comment = @message.comments.find(params[:id])
        @comment.destroy
        redirect_to forum_message_path(@forum, @message)
    end
    def new
    end
    
    private
        def comment_params
           params.require(:comment).permit(:content) 
        end
    
end
