class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params) 
    if @comment.save
      redirect_to "/teams/#{@comment.team.id}" 
    else   
      @team = @comment.team
      @comments = @team.comments
      render "teams/show"
    end  
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge( user_id: current_user.id, team_id: params[:team_id] )
  end
end
