class HomeController < ApplicationController
  def index
  end

  def result
    @player = params[:player]
    
    @computer = (1..3).to_a.sample(1)[0]
    
    images = {1=>"../../../images/rock.jpg", 2=>"../../../images/scissors.jpg", 3=>"../../../images/paper.jpg"}
    
    @playerImg = images[@player]
    @comImg = images[@computer]
    
    if (@player == @computer)
      @result = "DRAW"
      
    elsif (@player == 1 && @computer == 3) || (@player == 2 && @computer == 1) || (@player == 3 && @computer == 2)
      @result = "WIN!!"
    
    else
      @result = "LOSE"
    end
  end
end
