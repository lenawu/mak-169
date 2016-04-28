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
        
    end
    def updated
        
    end
    
    def destroy
        
    end
    private
        def message_params
            params.require(:message).permit(:title, :description)
        end
end
