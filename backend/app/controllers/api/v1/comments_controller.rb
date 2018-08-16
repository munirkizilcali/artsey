class Api::V1::CommentsController < ApplicationController

	def index
		@comments = Comment.all
		render json: @comments
	end

	def show
		@comment = Comment.find(params[:id])
		render json: @comment
	end

	def create
		@comment = Comment.new(comment_params)
		if (@comment.valid?)
			@comment.save
			render json: @comment
		else
			render :json => { :errors => @comment.errors.full_messages }
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		render body: nil, status: :no_content
	end

	private

	def comment_params
		params.require(:comment).permit(:artsey_link, :content, :username) 	
	end

end
