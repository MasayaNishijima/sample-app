class ChoicesController < ApplicationController
  before_action :set_choice
  before_action :authenticate_user!
  
  def count_up
    create_user_votes
    @choice.count += 1
    @choice.save
    
    redirect_to vote_path(@choice.vote)
  end
  
  private
    def set_choice
      @choice = Choice.find(params[:id])
    end

    def create_user_votes
      UserVote.create(user: current_user, vote: @choice.vote, choice: @choice)
    end
end
