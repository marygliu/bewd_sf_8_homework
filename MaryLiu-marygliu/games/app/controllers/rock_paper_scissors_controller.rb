#@Bryan/@David: Please help here. When game_throw = scissors and user_throw = rock, it's not working. 

class RockPaperScissorsController < ApplicationController
  def new
    @rps = ['rock', 'paper', 'scissor']
  end

  def show
    @rps = ['rock', 'paper', 'scissor']
    @user_throw = params[:id]
    @game_throw = @rps[rand(0..2)]

    win = 
       {'rock' => 'scissors', 
        'paper' => 'rock',
        'scissors' => 'paper'}

    if win[@user_throw] == @game_throw
      @outcome_partial = 'win'
    elsif @user_throw == @game_throw
      @outcome_partial = 'tie'
    else
      @outcome_partial = 'lose'
    end
  end


end
