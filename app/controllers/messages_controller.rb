class MessagesController < ApplicationController
	def new
		@message = Message.new
	end

	def index 
		@messages = Message.all
	end 

	def create 
		@message = Message.new(message_params)
		if @message.save 
			redirect_to @message 
		else 
			render 'new'
		end 
	end 

	def show
		@message = Message.find(params[:id]) 
	end

	def message_params 
		params.require(:message).permit(:title, :body, :user_id)
	end 
end
