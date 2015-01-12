class Game

  def initialize
    @player = nil
    @item = nil
    @rps = [:rock, :paper, :scissors]
    @chosen = false
  end

  attr_accessor :player, :rps, :item

  def add_player(player)
    @player = player
  end

  def has_player?
    !@player.nil?
  end

  def choose
    @chosen = true
    @item = @rps.sample
  end

  def chosen?
    @chosen
  end



  # def pick(pick)
  #   @pick = pick
  # end

  # def picked
  #   @pick
  # end


  def winner
    if
      player.choose(:rock) && self.choose(:scissors)
      player.choose(:paper) && self.choose(:rock)
      player.choose(:scissors) && self.choose(:paper)
      return player
    else
      player.choice == self.choice
      return "Draw"
    # elsif
    #   return self
    # end
    end
  end

end