class MessagesController < ApplicationController
    def create
        @forum = Forum.find(params[:forum_id])
        @message = @forum.messages.create(message_params)
        if user_signed_in?
            @message.user_id = current_user.id
        end
        if @message.save
            redirect_to forum_message_path(@forum,@message)
        else
            render 'new'
        end
    end
    
    def show
        @forum = Forum.find(params[:forum_id])
        @message = @forum.messages.find(params[:id])
    end
    
    def new
        @forum = Forum.find(params[:forum_id])
        @message = Message.new
    end
    def edit
        @forum = Forum.find(params[:forum_id])
        @message = @forum.messages.find(params[:id])
    end
    def update
        @forum = Forum.find(params[:forum_id])
        @message = @forum.messages.find(params[:id])
        if @message.update(message_params)
            redirect_to forum_message_path(@forum,@message)
        else 
            render "edit"
        end
    end
    
    def destroy
        @forum = Forum.find(params[:forum_id])
        @message = @forum.messages.find(params[:id])
        @message.destroy
        redirect_to forum_path(@forum)
    end
    private
        def message_params
            params.require(:message).permit(:title, :description)
        end
end
