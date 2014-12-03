class CommentsController < ApplicationController

	def create
		@user = user_session
		@comment = Comment.create!(params.require(:comment).permit(:comment, :user_id, :pond_id))
		redirect_to :back
	end

end
