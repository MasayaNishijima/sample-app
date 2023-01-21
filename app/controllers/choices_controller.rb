class ChoicesController < ApplicationController
  before_action :set_choice
  
  def count_up
    @choice.count += 1
    @choice.save
    
    redirect_to vote_path(@choice.vote)
  end
  
  private
    def set_choice
      @choice = Choice.find(params[:id])
    end
end
